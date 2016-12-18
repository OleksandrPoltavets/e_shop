class ProductsController < ApplicationController
  before_action :set_product, except: [:index]

  def index
    @products = Product.all
  end

  def show
  end

  def add_to_cart
    @product_to_cart = ProductToCart.new(current_user, @product).add
  end

  private

  def set_product
    @product = Product.find_by(id: params[:id])
  end

end
