class TeamsController < ApplicationController
  def index
  	  	@sports = Sport.all
  	  	@team = Team.find(params[:id])
  	  	@image_url = (@team.name.downcase.gsub(' ', '_')) + '_big.png'
  end
end
