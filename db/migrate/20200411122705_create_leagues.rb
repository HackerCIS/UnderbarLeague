class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.string "league_name"
      t.string "league_type"
      
      t.references :user, foreign_key: true
  
      t.timestamps
    end
  end
end
