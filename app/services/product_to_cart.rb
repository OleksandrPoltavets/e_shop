class ProductToCart
  def initialize(user, product)
    @user = user
    @product = product
  end

  def add
    @user.active_order.order_items.where(product: @product).first_or_create(product: @product)
  end
end