class LeaguesController < ApplicationController
  def new_league
  end

  def create_league
    @league = League.new
    
    @league.league_name = params[:league_name]
    @league.league_type = params[:league_type]
    
    @league.save      
    
    redirect_to "/teams/new_team/#{@league.id}"
    
    
  end

  def modify_league
  end

  def list_league
  end

  def show_league
    @league = League.find(params[:id])
  end

  def delete_league
  end
end
