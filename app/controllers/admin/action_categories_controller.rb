class Admin::ActionCategoriesController < ApplicationController
  before_action :find_action_category, only: %i[show edit update destroy]

  def index
    @action_categories = ActionCategory.all
  end

  def new
    @act_category = ActionCategory.new
  end

  def create
    @act_category = Category.new(action_category_params)
    if @act_category.save
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def edit
    # callback in private - :find_category
  end

  def update
    if @act_category.update(action_category_params)
      redirect_to admin_action_categories_path
    else
      render :edit
    end
  end

  def show

  end

  def destroy
    @act_category.destroy
    redirect_to admin_action_categories_path
  end

  private

  def action_category_params
    params.require(:action_category).permit(:name)
  end

  def find_action_category
    @act_category = ActionCategory.find(params[:id])
  end
end

