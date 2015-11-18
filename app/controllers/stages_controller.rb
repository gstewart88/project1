class StagesController < ApplicationController
  before_action :set_stage, only: [:show, :edit, :update, :destroy]

  def index
    @stages = Stage.all
  end

  def show
  end

  def new
    @stage = Stage.new
  end

  def edit
  end

  def create
    Stage.create(stage_params)
    redirect_to(stages_path)
  end

  def update
    @stage.update(stage_params) 
    redirect_to(stages_path)
  end

  def destroy
    @stage.destroy
    redirect_to(stages_path)
  end

  private

  def set_stage
    @stage = Stage.find(params[:id])
  end

  def stage_params
    params.require(:stage).permit(:name, :stage_image)
  end

end