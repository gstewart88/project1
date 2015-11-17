class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :playgif
      t.string :movegif
      t.string :victorypose
    end
  end
end
