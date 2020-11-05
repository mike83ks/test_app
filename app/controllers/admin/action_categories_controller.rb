class Admin::ActionCategoriesController < Admin::BaseController
  before_action :authenticate_user!
  before_action :admin_required!, only: %i[index show edit update destroy]
  before_action :find_action_category, only: %i[show edit update destroy]

  def index
    @action_categories = ActionCategory.all
  end

  def new
    @action_category = ActionCategory.new
  end

  def create
    @action_category = ActionCategory.new(action_category_params)
    if @action_category.save
      redirect_to admin_action_categories_path
    else
      render :new
    end
  end

  def edit
    # callback in private - :find_category
  end

  def update
    if @action_category.update(action_category_params)
      redirect_to admin_action_categories_path
    else
      render :edit
    end
  end

  def show

  end

  def destroy
    @action_category.destroy
    redirect_to admin_action_categories_path
  end

  private

  def action_category_params
    params.require(:action_category).permit(:name)
  end

  def find_action_category
    @action_category = ActionCategory.find(params[:id])
  end
  
end
