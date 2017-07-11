class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    elsif current_user && Order.in_progress(current_user)[0]
      Order.in_progress(current_user)[0]
    else
      Order.new
    end
  end

end
