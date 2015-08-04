class TeamsController < ApplicationController
	include FeedHelper
  include NokogiriHelper

  def index
  	  	@team = Team.find(params[:id])
  	  	@image_url = (@team.name.downcase.gsub(' ', '_')) + '_big.png'
  end

  def getTeamNews
    	render :json => { :entries => FeedHelper.getMLBTeamFeed(params[:feedId]) }
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

  def getTeamRankings
    ##return NokogiriHelper.getBasicTeamInfo(params[:theScoreId]}, params[:league]})
    render :json => { :info => NokogiriHelper.getBasicTeamInfo(params[:theScoreId], 'mlb') }
  end
end 
