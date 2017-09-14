class SushiRollsController < ApplicationController
  before_action :set_sushi_roll, only: [:show, :update, :edit, :destroy]

  def index
    @sushi_rolls = current_user.sushi_rolls
  end

  def show
  end

  def new
    @sushi_roll = current_user.sushi_rolls.new
  end

  def create
    @sushi_roll = current_user.sushi_rolls.new(sushi_params)

    if @sushi_roll.save
      redirect_to @sushi_roll
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @sushi_roll.update(sushi_params)
      redirect_to @sushi_roll
    else
      render :edit
    end
  end 

  def destroy
    @sushi_roll.destroy
    redirect_to sushi_rolls_path
  end

  private

    def set_sushi_roll
      @sushi_roll = current_user.sushi_rolls.find(params[:id])
    end

    def sushi_params
      params.require(:sushi_roll).permit(:name, :price, :spicy)
    end 
end
