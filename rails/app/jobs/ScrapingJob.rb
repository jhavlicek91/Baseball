class ScrapingJob
	include NokogiriHelper

	def self.Run
		getRosterPageData
		getPlayerPageData
	end

	private 
		def self.getRosterPageData
			teams = Team.where("theScoreId IS NOT NULL" )

			teams.each do |t|
				sport_id = t.division.conference.league.sport_id

				info = NokogiriHelper.parseRosterPage(t.theScoreId, t.division.conference.league.abbreviation.downcase)

				##update rankings in teams table
				Team
					.find(t.id)
					.update(streak: info['rankings'].streak, 
						last_ten: info['rankings'].last_ten, 
						place: info['rankings'].division_place, 
						team_record: info['rankings'].record 
					)			

				##add or update players
				unless info['players'].nil?
					info['players'].each do |p|
						Player.where(sport_id: sport_id, theScoreId: p.theScoreId).first_or_create do |player|
							player.theScoreId= p.theScoreId
							player.team_id = t.id
							player.sport_id = sport_id
						end
					end
				end

				##delete any players from current team that dont exist
				##Player.where(team_id: t.id ) 

				puts "Finished parsing roster page for #{t.name}"
			end
		end

		##run multiple threads of this and add a lock column to players table, set and release in a tryy finally block
		def self.getPlayerPageData ##use new date column to run this in batches, 50 at a time 
			players = Player.where("theScoreId IS NOT NULL")

			players.each do |p|
				info = NokogiriHelper.parsePlayerPage(p.theScoreId, p.team.division.conference.league.abbreviation.downcase)

				player = Player.where(sport_id: p.sport_id, theScoreId: p.theScoreId).first 
				player.name = info.name
				player.height = info.height
				player.weight = info.weight
				player.birthdate = info.birthdate
				player.number = info.number

				position = Position.where(abbreviation: info.position).first
				if position.nil?
					puts "position is null"
				else
					player.position = position						
				end

				player.save

				info.stats.each do |s|
					PlayerStat.where(player_id: p.id, stat_type_id: s['stat_type']).first_or_create do |stat|
						stat.player_id = p.id
						stat.stat_type_id = s['stat_type']
						stat.value = s['value']
					end
				end

				puts
			end

		end

end
