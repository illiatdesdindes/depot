class StoreController < ApplicationController
  def index
    @products = Product.all
    @time = Time.now
    @counter = incr_counter
    @cart = current_cart
  end

end
