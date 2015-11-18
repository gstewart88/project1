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
    Game.create!(game_params)
    redirect_to action: "show", id: Game.last.id
  end

  def edit
  end

  private
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:id, :player1_id, :player2_id, :player1_character_id, :player2_character_id)
  end
  
end