class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.integer :square
      t.integer :game_id
      t.integer :player_id
      t.string :symbol

      t.timestamps null: false
    end
  end
end
