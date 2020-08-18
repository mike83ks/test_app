class CategoriesController < ApplicationController
  #before_action :find_category, only: %i[show create edit update destroy]

  def index
    @categories = Category.all
  end

  def show

  end


end
