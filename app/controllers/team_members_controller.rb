class TeamMembersController < ApplicationController
  def join
    @user = current_user
    @leagues = League.all
  end
  
  def join_complete
    @team_member = TeamMember.new
    
    @team_member.user_id = current_user.id
    @team_member.team_id = params[:team_id]
    
    @team_member.save
    
    @team = Team.find(params[:team_id])
    
    redirect_to "/leagues/show_league/#{@team.league_id}"
  end
  
end
