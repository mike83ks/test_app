class Admin::ProductsController < ApplicationController
  #before_action :find_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
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

  end

  def destroy
    @product.destroy
    redirect_to admin_products_path
  end

  private

  def category_params
    params.require(:product).permit(:title)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
