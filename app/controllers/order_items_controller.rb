class OrderItemsController < ApplicationController
  before_action :set_order_item, except: [:index]

  def index
    @order_items = OrderItem.all
  end

  def show
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
