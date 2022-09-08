class FoodsController < ApplicationController
  before_action :check_for_login
  
  def index
    @foods = @current_user.foods 
    @data = Logs.group(:food_id).
  end

  def create
    food = Food.create food_params
    @current_user.foods << food
    redirect_to food
  end

  def new
    @food = Food.new
  end

  def edit
    @food = Food.find params[:id]
  end
  
  def show
    @food = Food.find params[:id]
    @logs = @current_user.logs.where(:food_id => params[:id]).order(date: :desc)
    @tags = Tag.all
  end

  def update
    food = Food.find params[:id]
    food.update food_params
    redirect_to food
  end

  def destroy
    food = Food.find params[:id]
    food.destroy
    redirect_to foods_path
  end

  private
  def food_params
    params.require(:food).permit(:name, :image, :description, :user_id)
  end
end