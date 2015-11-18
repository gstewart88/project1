class Stage < ActiveRecord::Base 
  has_many :games
  mount_uploader :stage_image, StageImageUploader
end