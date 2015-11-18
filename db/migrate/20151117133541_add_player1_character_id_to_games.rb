class AddPlayer1CharacterIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :player1_character_id, :integer
  end
end
