module ProductsHelper

  def check_product_filter
    if params[:easy_check].eql?('1')
      @products = @products.sell
    elsif params[:hard_check].eql?('1')
      @products = @products.buy
    elsif params[:medium_check].eql?('1')
      @products = @products.change
    else
      @products = @products.all
    end
  end
end
