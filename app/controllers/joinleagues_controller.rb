class JoinleaguesController < ApplicationController
  def create
    @leagues = League.all
  end

  def create_complete
    
   
    
    joinleague = Joinleague.find_by(user_id: current_user.id, league_id: params[:league_id])
    
    if joinleague.present?
    else
      Joinleague.create(user_id: current_user.id, league_id: params[:league_id])
    end
    
    redirect_to "/leagues/list_league"
    
  end
end
