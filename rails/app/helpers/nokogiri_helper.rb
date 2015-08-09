require 'nokogiri'
require 'watir-webdriver'

module NokogiriHelper
	include Constants

	def self.parseRosterPage(theScoreId, league)
		page = getParsedPage(getRosterPageUrl(theScoreId, league), playerPageWaitForClass)

		parsedPlayers = []
		parsedPlayers = page.css(playerLinkClass).each do |p| 		
			parsed_link = p['href']
			if parsed_link.nil?
				puts "no link"
			else
				parsedPlayers.push(parsed_link.split('/').last.to_i)
			end
		end

		return { 'rankings' => ParsedRankingInfo.new(page), 'players' => parsedPlayers }
	end

	def self.parsePlayerPage(theScoreId, league)
		page = getParsedPage(getPlayerPageUrl(theScoreId, league), playerPageWaitForClass)

		playerCard = page.css('div.player-info-card')
		unless playerCard.nil?
			return ParsedPlayer.new(playerCard, league)
		end

		puts "null player card"
	end

	private 
		def self.playerLinkClass			
			'a.player-link'
		end

		def self.rosterPageWaitForClass
			'team-info-card'
		end

		def self.playerPageWaitForClass
			'player-info-card'
		end		

		def self.getRosterPageUrl(theScoreId, league)
			return "http://www.thescore.com/#{league}/teams/#{theScoreId}/roster" 
		end

		def self.getPlayerPageUrl(theScoreId, league)
			return "http://www.thescore.com/#{league}/players/#{theScoreId}/news" 
		end

		def self.getParsedPage(url, classToWaitFor)
			b = Watir::Browser.new :phantomjs ##open in headerless browser
			b.goto url
			b.div(:class => classToWaitFor).wait_until_present	

			return Nokogiri::HTML(b.html)	
		end

		class ParsedRankingInfo
			attr_accessor :record, :division_place, :last_ten, :streak 

			def initialize(parser)
				@parser = parser

				setInfo
			end

			private 

			def setInfo
				parsed_record = @parser.css('div.record').text
				parsed_division_place = @parser.css('span.rank').text
				parsed_last_ten = @parser.css('div.stat-record').text
				parsed_streak = @parser.css('div.stat-streak').text

				self.record = parsed_record
				self.division_place = parsed_division_place
				self.last_ten = parsed_last_ten
				self.streak = parsed_streak
			end
		end

		class ParsedPlayer ##string.isnullorempty, #validations
			attr_accessor :stats, :name, :height, :weight, :birthdate, :position, :number

			def initialize(parser, league) 
				@parser = parser
				@league = league

				setPlayerInfo
				setStats
			end

			private 
			def setPlayerInfo
				parsed_name = @parser.css('div.player-name').text
				unless parsed_name.nil?
					self.name = parsed_name.squeeze(' ').strip.gsub("\n", "")
				end

				parsed_position = @parser.css('div.player-position').text
				unless parsed_position.nil?
					self.position  = parsed_position.squeeze(' ').strip.gsub("\n", "")
				end

				parsed_number = @parser.css('div.player-number').text
				unless parsed_number.nil?
					self.number = parsed_number
				end

				parsed_HW = @parser.css('span.formatted-height-weight').text
				unless parsed_HW.nil?
					hNw = parsed_HW.split('/')
					self.height = hNw.first.strip
					self.weight = hNw.last.strip
				end

				parsed_birthdate = @parser.css('span.formatted-birthdate').text
				unless parsed_birthdate.nil?
					self.birthdate = parsed_birthdate.split(' (').first
				end

				parsed_position = @parser.css('div.player-position').text
				unless parsed_position.nil?
					self.position  = parsed_position.squeeze(' ').strip.gsub("\n", "")
				end		
			end


			def setStats
				parsed_stats = @parser.css('span.font-bigstat')			
				self.stats = []	

				case @league ##change these to enums
				when "mlb"
					if self.position.eql? "Pitcher"
						parsed_winLoss = parsed_stats[0].text.split('-')

						self.stats.push({'stat_type' => Constants::StatTypes::PITCHER_W, 'value' => parsed_winLoss.first})
						self.stats.push({'stat_type' => Constants::StatTypes::PITCHER_L, 'value' => parsed_winLoss.last})

						parsed_ERA = parsed_stats[1].text
						parsed_K = parsed_stats[2].text
						parsed_BB = parsed_stats[3].text
						parsed_WHIP = parsed_stats[4].text

						self.stats.push({'stat_type' => Constants::StatTypes::PITCHER_ERA, 'value' => parsed_ERA})	
						self.stats.push({'stat_type' => Constants::StatTypes::PITCHER_K, 'value' => parsed_K})			
						self.stats.push({'stat_type' => Constants::StatTypes::PITCHER_BB, 'value' => parsed_BB})				
						self.stats.push({'stat_type' => Constants::StatTypes::PITCHER_WHIP, 'value' => parsed_WHIP})
					else

					end
				when "nba"

				when "nhl"

				when "nfl"

				else
					puts "invalid league"
				end
			end				
		end
end
