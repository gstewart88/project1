class AddPlayer2CharacterIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :player2_character_id, :integer
  end
end
