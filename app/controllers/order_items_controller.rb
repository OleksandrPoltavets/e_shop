class OrderItemsController < ApplicationController
  before_action :set_order_item, except: [:index]

  def index
    @order_items = Order.active_order(current_user).order_items
  end

  def destroy
    @order_item.destroy
    respond_to do |format|
      format.html { redirect_to order_items_url }
      format.js
    end
  end

  private

  def set_order_item
    @order_item = OrderItem.find(params[:id])
  end
end
