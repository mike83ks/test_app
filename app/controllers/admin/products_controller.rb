class Admin::ProductsController < ApplicationController
  #before_action :find_product, only: %i[show edit update destroy]
  has_scope :category

  def index
    @products = apply_scopes(Product.all.order(created_at: :desc))

    end

  def new
    @product = Product.new
  end

  def create
    @product = current_user.products.new(product_params)
    if @product.save
      redirect_to products_path
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
