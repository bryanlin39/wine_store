class ProductsController < ApplicationController
  before_action :except => [:index, :show] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create!(product_params)
    redirect_to products_path
  end

private

  def product_params
    params.require(:product).permit(:name, :price, :description, :quantity, :image)
  end

end
