class TeamsController < ApplicationController
	include FeedHelper

  def index
  	  	@sports = Sport.all
  	  	@team = Team.find(params[:id])
  	  	@image_url = (@team.name.downcase.gsub(' ', '_')) + '_big.png'
  end

  def getTeamNews
    	entries = FeedHelper.getMLBTeamFeed(params[:feedId])

    	#todo: imit to last 10
    	render :json => { :entries => entries }
  end  
end
