class ProductsController < ApplicationController
  before_action :set_product, except: [:index]

  def index
    @products = Product.all
  end

  def show
  end

  private

  def set_product
    @product = Product.find_by(id: params[:id])
  end

end
