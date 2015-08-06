class ScrapingJob
	include NokogiriHelper

	def self.Run
		updateTeamInfo
	end

	private 

	def self.updateTeamInfo
		teams = Team.all

		teams.each do |t|
			info = NokogiriHelper.getBasicTeamInfo(t.theScoreID, t.division.conference.league.abbreviation.downcase)

			Team
			.find(t.id)
			.update(streak: info.streak, last_ten: info.last_ten, place: info.division_place, team_record: info.record )			
		end
	end


end
