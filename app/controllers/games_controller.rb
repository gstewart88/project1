class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]
  before_action :authenticate_user!

  def index
    @games = Game.all
  end

  def show
  end

  def update
    @game.make_move(current_user, params[:square])
        redirect_to(game_path(@game))
  end

  def new
    @game = Game.new
  end

  def create
    @game.player1 = current_user
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