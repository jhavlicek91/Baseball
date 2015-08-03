class TeamsController < ApplicationController
	include FeedHelper

  def index
  	  	@team = Team.find(params[:id])
  	  	@image_url = (@team.name.downcase.gsub(' ', '_')) + '_big.png'
  end

  def getTeamNews
    	entries = FeedHelper.getMLBTeamFeed(params[:feedId])

    	#todo: imit to last 10
    	render :json => { :entries => entries }
  end  

  def getTeamsForSideBar
    divisions = Division
      .joins(:conference)
      .where(conferences: {league_id: params[:leagueId]} )  
      .order("divisions.conference_id, divisions.id")
      .select("divisions.id, (conferences.abbreviation || ' ' || divisions.name) as name, conferences.id as conferenceId")        

    teams = Team
      .joins(:city, division: :conference)
      .where(conferences: {league_id: params[:leagueId]} )       
      .select("teams.id, teams.name, cities.name as cityName, teams.division_id") 

    render :json => { :divisions => divisions, :teams => teams }
  end
end 
