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

	def self.getBasicTeamInfo(theScoreId, league)
		url  = GetTeamPageUrl(theScoreId, league)


	end

	private 
		def self.GetTeamPageUrl(theScoreId, league)
		end
end
