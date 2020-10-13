class ProductsController < ApplicationController
  #before_action :find_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end


  def show

  end

  private

  def product_params
    params.require(:product).permit(:title)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
