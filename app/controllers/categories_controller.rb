class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.create(:category_params)
  end

  def edit
    
  end


  private

  def category_params
    params.require(:category).permit(:title)
  end
end
