class ProductToCart
  attr_reader :product, :in_cart

  def initialize(user, product)
    @user = user
    @product = product
    @in_cart = in_cart?
  end

  def add
    cart_product.first_or_create
  end

  private

  def in_cart?
    cart_product.any?
  end

  def cart_product
    Order.active_order(@user).order_items.where(product: @product)
  end

end