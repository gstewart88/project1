class Move < ActiveRecord::Base
  belongs_to :player, class_name: 'User'
  belongs_to :game

  # def acceptable_move?
  #   square < 9 && square > -1 
  # end

end