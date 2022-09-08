class TagsController < ApplicationController
  before_action :check_for_login
  
  def index
    @usertags = @current_user.tags
    @alltags = Tag.where.not(:id => @usertags.pluck(:id))
  end

  def show
    @tag = Tag.find params[:id]
    # raise 'hell'
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new tag_params

    if @tag.save
      redirect_to tags_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @tag = Tag.find params[:id]
    @tag.destroy
    redirect_to tags_path
  end

  private 
  def tag_params
    params.require(:tag).permit(:name)
  end
end
