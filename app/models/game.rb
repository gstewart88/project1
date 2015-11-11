class Game < ActiveRecord::Base
  belongs_to :player1, class_name: "User"
  belongs_to :player2, class_name: "User"
  has_many :moves

  WINNING_LINES = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6] ]

  def make_move(player, square)
        Move.create(square: square, symbol: symbol_for_player(player), player: player, game: self)
        save!
  end

  def finished?
    winning_game? || drawn_game?
  end

  def result
    case
    when winning_game?
      "#{moves.last.player} won!"
    when drawn_game?
      "It is a draw!"
    else
      "Game's still in progress."
    end
  end

  def whose_turn
    return player1 if moves.empty?
    moves.last.player == player1 ? player2 : player1
  end

  def board
    empty_board.tap do |board|
      moves.each do |move|
        board[move.square] = move.symbol
      end
    end
  end

  def empty_board
    Array.new(9,nil)
  end

  # def acceptable_move?(square)
  #   square < 9 && square > -1 
  # end

  private
  def winning_game?
    !!WINNING_LINES.detect do |winning_line|
      %w(XXX OOO).include?(winning_line.map { |e| board[e] }.join)
    end
  end

  private
  def drawn_game?
    moves.size == 9
  end

  private
  def symbol_for_player(player)
    case player
    when player1
      'X'
    when player2
      'O'
    else
      raise "Failed to assign symbols to players"
    end
  end

end
