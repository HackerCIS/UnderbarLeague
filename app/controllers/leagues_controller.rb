class LeaguesController < ApplicationController
  def new_league
  end

  def create_league
    @league = League.new
    
    @league.league_name = params[:league_name]
    @league.league_type = params[:league_type]
    @league.user_id = current_user.id
    
    @league.save      
    
    redirect_to "/teams/new_team/#{@league.id}"
    
    
  end

  def modify_league
  end

  def list_league
  end

  def show_league
    @league = League.find(params[:id])
    
    @matchs = @league.matchs.select('home_team, COUNT(CASE WHEN home_match_result="승" THEN 1 END) AS count_win, COUNT(CASE WHEN home_match_result="무" THEN 1 END) AS count_draw, COUNT(CASE WHEN home_match_result="패" THEN 1 END) AS count_lose, (CAST(COUNT(CASE WHEN home_match_result="승" THEN 1 END) AS FLOAT)/CAST(COUNT(home_team) AS FLOAT)) AS win_rate, SUM(home_score) AS sum_point, SUM(away_score) AS sum_lose_point').group(:home_team).order(win_rate: :desc)
    
#    @matchs = @league.matchs.select('home_team, COUNT(CASE WHEN home_match_result="승" THEN 1 END) AS count_win, COUNT(CASE WHEN home_match_result="무" THEN 1 END) AS count_draw, COUNT(CASE WHEN home_match_result="패" THEN 1 END) AS count_lose, (CAST(COUNT(CASE WHEN home_match_result="승" THEN 1 END) AS FLOAT)/CAST(COUNT(home_team) AS FLOAT)) AS win_rate, SUM(home_score) AS sum_point, SUM(away_score) AS sum_lose_point').group(:home_team).order(win_rate: :desc)
  end

  def delete_league
  end
end
