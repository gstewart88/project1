class Move < ActiveRecord::Base
  belongs_to :player
  belongs_to :game

  # def acceptable_move?
  #   square < 9 && square > -1 
  # end

end