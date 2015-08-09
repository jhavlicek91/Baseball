require 'rufus-scheduler'
require 'ScrapingJob'

scheduler = Rufus::Scheduler.new

##run every day at 5am
scheduler.cron '00 5 * * *', :first_in => '5s' do
	puts "start updating all teams"

	ScrapingJob.Run

	puts "finished updating all teams"
end
