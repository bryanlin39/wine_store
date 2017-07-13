class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
    shipping_object = Shipping.new()
    @price = shipping_object.get_shipping_price()
  end

  def order_complete
    current_order.update(:status => 'Completed')
    current_order.decrease_stock
    session[:order_id] = nil
    redirect_to products_path
  end


end
