class AddStageIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :stage_id, :integer
  end
end
