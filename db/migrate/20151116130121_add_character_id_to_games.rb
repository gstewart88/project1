class AddCharacterIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :character_id, :integer
  end
end
