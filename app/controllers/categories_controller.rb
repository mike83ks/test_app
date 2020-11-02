class CategoriesController < ApplicationController
  #before_action :find_category, only: %i[show create edit update destroy]
  before_action :admin_required!
  def index
    @categories = Category.all
  end

  def show

  end


end
