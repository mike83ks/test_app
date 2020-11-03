class ProductsController < ApplicationController
  #before_action :find_product, only: %i[show edit update destroy]
  #before_action :authenticate_user!

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    find_product
  end

  private

  def product_params
    params.require(:product).permit(:title)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
