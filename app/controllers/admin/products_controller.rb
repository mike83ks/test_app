class Admin::ProductsController < Admin::BaseController
  before_action :authenticate_user!
  before_action :find_product, only: %i[show edit update destroy]
  before_action :admin_required!, only: %i[show edit update destroy]

  include ProductsHelper

  has_scope :sell, :buy, :change

  def index
    @products = Product.all
    # scopes
    if params[:action_category_id].present?
      @products = @products.by_action_category(params[:action_category_id])
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = current_user.products.new(product_params)
    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit
    # callback in private - :find_product
  end

  def update
    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path
  end

  private

  def product_params
    params.require(:product).permit(:title,
                                    :description,
                                    :price,
                                    :category_id,
                                    :action_category_id,
                                    :remove_image)
  end

  def find_product
    @product = Product.find(params[:id])
  end

end
