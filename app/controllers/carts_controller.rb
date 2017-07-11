class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
  end

  def order_complete
    current_order.update(:status => 'Completed')
    current_order.decrease_stock
    session[:order_id] = nil
    redirect_to products_path
  end

end
