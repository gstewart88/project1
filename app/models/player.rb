class Player < ActiveRecord::Base
  has_many :moves
  has_many :games
end
