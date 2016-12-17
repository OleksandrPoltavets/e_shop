class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def show
  end

  def create
  end

  private

  def order_params
    params.require(:order).permit(:user_id)
  end
end
