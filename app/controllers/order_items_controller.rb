class OrderItemsController < ApplicationController
  before_action :set_order_item, except: [:index]

  def index
    @order_items = OrderItem.all
  end

  def show
  end

  def destroy
    if @order_item.destroy
      redirect_to order_items_url, notice: 'Successfully removed item from cart'
    else
      redirect_to order_items_url, error: 'Fail to remove item from cart!'
    end
  end

  private

  def set_order_item
    @order_item = OrderItem.find(params[:id])
  end
end
