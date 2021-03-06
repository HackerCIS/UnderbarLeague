Rails.application.routes.draw do

  get 'joinleagues/create' => "joinleagues#create"
  post 'joinleagues/create_complete' => "joinleagues#create_complete"
  
  get 'team_members/join' => "team_members#join"
  post 'team_members/join_complete' => "team_members#join_complete"
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  root "leagues#list_league"
  
  get 'matchs/result_new/:id' => "matchs#result_new"
  post 'matchs/result_enter/:id' => "matchs#result_enter"
  get 'matchs/result_show/:id' => "matchs#result_show"
  

  
  get 'matchs/result_input' => "matchs#result_input"
  get 'matchs/test/:id' => "matchs#test"
  
  get 'teams/new_team/:id' => "teams#new_team"
  post 'leagues/:league_id/teams/create_team' => "teams#create_team"
  get 'teams/modify_team'
  
  
  get 'leagues/new_league' => "leagues#new_league"
  post 'leagues/create_league' => "leagues#create_league"
  get 'leagues/modify_league' => "leagues#modify_league"
  get 'leagues/list_league' => "leagues#list_league"
  get 'leagues/show_league/:id' => "leagues#show_league"
  get 'leagues/delete_league/:id' => "leagues#delete_league"
  
  
  get 'boards/standings/:id' => "boards#standings"
  get 'boards/score' => "boards#score"
  get 'boards/player' => "boards#player"
  get 'boards/schedule' => "boards#schedule"
end
