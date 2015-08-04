require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every("30s") do
	puts "did something"
end

