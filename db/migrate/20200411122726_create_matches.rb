class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string "home_team"
      t.string "away_team"
      t.integer "home_score"
      t.integer "away_score"
      t.string "home_match_result"
      t.string "away_match_result"
      t.string "match_date"
      
      t.references :league, foreign_key: true

      
      
      t.timestamps
    end
  end
end
