class Character < ActiveRecord::Base
  has_many :games
  belongs_to :player, class_name: 'User'
  
  mount_uploader :playgif, PlaygifUploader
  mount_uploader :movegif, MovegifUploader
  mount_uploader :victorypose, VictoryposeUploader
end
