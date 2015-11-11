class Move < ActiveRecord::Base
  belongs_to :player, class_name: 'User'
  belongs_to :game

  validate :square_is_empty
  validate :is_players_turn
  validate :is_game_over


  private
  def square_is_empty
    errors.add(:base, "square is already taken") unless game.square_is_empty?(square)
  end

  private
  def is_players_turn
    errors.add(:base, "it's not your turn") unless game.is_players_turn?(player)
  end

  private
  def is_game_over
    errors.add(:base, "The game has finished. Move on. It's over.") unless !game.finished?
  end

end