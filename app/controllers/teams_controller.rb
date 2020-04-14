class TeamsController < ApplicationController
  def new_team
    @league = League.find(params[:id])
    
  end

  def create_team
    @team = Team.new
    
    @team.team_name = params[:team_name]
    @team.logoimg = params[:logoimg]
    @team.league_id = params[:league_id]
    
    @team.save
    
    redirect_to "/teams/new_team/#{@team.league_id}"
    
  end

  def modify_team
  end
end
