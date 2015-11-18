class Character < ActiveRecord::Base 
  has_many :games_as_player1_character, class_name: 'Game', foreign_key: :player1_character_id
  has_many :games_as_player2_character, class_name: 'Game', foreign_key: :player2_character_id
  mount_uploader :playgif, PlaygifUploader
  mount_uploader :movegif, MovegifUploader
  mount_uploader :victorypose, VictoryposeUploader
end