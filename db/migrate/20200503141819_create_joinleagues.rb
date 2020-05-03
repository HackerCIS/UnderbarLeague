class CreateJoinleagues < ActiveRecord::Migration[5.2]
  def change
    create_table :joinleagues do |t|
      t.references :user, foreign_key: true
      t.references :league, foreign_key: true

      t.timestamps
    end
  end
end
