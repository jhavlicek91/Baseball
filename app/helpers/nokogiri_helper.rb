require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'watir-webdriver'

module NokogiriHelper
	class BasicTeamInfo
		attr_accessor :record, :division_place, :last_ten, :streak 

		def initialize(parser)
			self.record = parser.css('div.record').text
			self.division_place = parser.css('span.rank').text
			self.last_ten = parser.css('div.stat-record').text
			self.streak = parser.css('div.stat-streak').text
		end
	end

	class ParsedPlayer
		attr_accessor :name, :position, :team, :number

		def initialize(team, parser)
			self.name = ''
			self.position = ''
			self.team = ''
			self.number = ''
		end
	end

	def self.getBasicTeamInfo(theScoreId, league)
		url  = GetTeamPageUrl(theScoreId, league)

		b = Watir::Browser.new :phantomjs
		b.goto url
		b.div(:class => 'team-info-card').wait_until_present		
		page = Nokogiri::HTML(b.html)

		return BasicTeamInfo.new(page)
	end

	def self.getTeamPlayers(theScoreId, league)

	end

	private 
		def self.GetTeamPageUrl(theScoreId, league)
			return "http://www.thescore.com/#{league}/teams/#{theScoreId}/roster" 
		end
end
