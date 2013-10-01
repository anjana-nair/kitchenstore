class CartsController < ApplicationController
  def add_to_cart
    product = Product.find(params[:product_id])
    cart = Cart.create()
    cart.products << product
    redirect_to root
  end
end
