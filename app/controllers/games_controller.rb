class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]
  before_action :authenticate_user!

  def index
    @games = Game.all
  end

  def show
  end

  def update
    @move = @game.make_move(current_user, params[:square])
    if @move.save
      redirect_to @game
    else
      render :show
    end
  end

  def new
    @game = Game.new
  end

  def create
    Game.create!(player1: User.first, player2: User.last)
    redirect_to action: "show", id: Game.last.id
  end

  def edit
  end

  private
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:id)
  end
  
end