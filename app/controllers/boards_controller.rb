class BoardsController < ApplicationController
  def standings
    @league = League.find(params[:id])
    

#    @tmpteams = @league.matchs.group(:home_team).sum(:home_score)
    
#    @tests = @league.matchs.select('home_team, AVG(home_score) AS sum_score').group(:home_team)
     @tests = @league.matchs.select('home_team, COUNT(CASE WHEN home_match_result="승" THEN 1 END) AS count_win, COUNT(CASE WHEN home_match_result="무" THEN 1 END) AS count_draw, COUNT(CASE WHEN home_match_result="패" THEN 1 END) AS count_lose, SUM(home_score) AS sum_point, SUM(away_score) AS sum_lose_point, COUNT(home_team) AS win_rate').group(:home_team).order(count_win: :desc)
     
     
     
#    @league.matchs.group(:home_team).sum(:home_score)
    
#    @league.matchs.where(home_team: '팀1', home_match_result: '승').count

    
  end

  def score
  end

  def player
  end

  def schedule
  end
end
