##require 'feedjira'

module FeedHelper

	class TeamFeed
		attr_accessor :title, :date, :content, :url

		def initialize(feed)
			self.title = feed.title
			self.date = feed.published
			self.content = feed.content
			self.url = feed.url
		end
	end

	def self.getMLBTeamFeed(team)
	    url = "http://mlb.mlb.com/partnerxml/gen/news/rss/" + team + ".xml"
     	feed = Feedjira::Feed.fetch_and_parse url

     	parsedEntries = feed.entries.map do |entry|
 			TeamFeed.new entry
     	end

     	return parsedEntries	
	end

	def getMLBTeamFeed(team)
		return 
	end

end
