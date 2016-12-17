module ProductsHelper
  def in_cart?
    current_user.active_order.order_items.where(product: @product).any?
  end
end
