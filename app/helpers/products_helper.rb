module ProductsHelper
  def in_cart?
    ProductToCart.new(current_user, @product).in_cart
  end
end
