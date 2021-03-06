class MatchsController < ApplicationController
  def result_new
    @league = League.find(params[:id])
  end
  
  def test
    @league = League.find(params[:id])
  end
  
  def result_enter
    @league = League.find(params[:id])
    @match = Match.new
    
    @match.league_id = @league.id
    @match.home_team = params[:home_team]
    @hometeam = Team.find_by(team_name: params[:home_team])
    @match.home_logo = @hometeam.logoimg
    
    @match.away_team = params[:away_team]
    @awayteam = Team.find_by(team_name: params[:away_team])
    @match.away_logo = @awayteam.logoimg
    
    @match.home_score = params[:home_score]
    @match.away_score = params[:away_score]
    
    if @match.home_score > @match.away_score
      @match.home_match_result = "승"
      @match.away_match_result = "패"
    elsif @match.home_score < @match.away_score
      @match.home_match_result = "패"
      @match.away_match_result = "승"
    else
      @match.home_match_result = "무"
      @match.away_match_result = "무"
    end
    
    
    #날짜넣는걸로 수정필요
    @match.match_date = "20200412"
    
    @match.save
    
    @match = Match.new
    
    @match.league_id = @league.id
    @match.home_team = params[:away_team]
    @hometeam = Team.find_by(team_name: params[:away_team])
    @match.home_logo = @hometeam.logoimg

    @match.away_team = params[:home_team]
    @awayteam = Team.find_by(team_name: params[:home_team])
    @match.away_logo = @awayteam.logoimg

    
    @match.home_score = params[:away_score]
    @match.away_score = params[:home_score]
    
    if @match.home_score > @match.away_score
      @match.home_match_result = "승"
      @match.away_match_result = "패"
    elsif @match.home_score < @match.away_score
      @match.home_match_result = "패"
      @match.away_match_result = "승"
    else
      @match.home_match_result = "무"
      @match.away_match_result = "무"
    end
    
    #날짜넣는걸로 수정필요
    @match.match_date = "20200412"
    
    @match.save
    
    
    
    redirect_to "/leagues/show_league/#{@league.id}" 
  end
  
  def result_show
    @league = League.find(params[:id])
  end
  
end
