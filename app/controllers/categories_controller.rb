class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit
    @category = Category.find_by(params[:id])

  end

  def show
    @category = Category.find(params[:id])
  end

  def destroy

  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
