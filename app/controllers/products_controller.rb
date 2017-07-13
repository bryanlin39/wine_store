class ProductsController < ApplicationController
  before_action :except => [:index, :show, :like, :unlike] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end
  before_action :only => [:like, :unlike] do
    redirect_to new_user_session_path unless current_user
  end
  helper_method :is_product_liked

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    @favorites = current_user.account.favorites

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

  def like
    @product_id = params[:id]
    @account = current_user.account
    @favorite = @account.favorites.new(product_id: params[:id])
    @favorite.save
    respond_to do |format|
      format.html {redirect_to products_path}
      format.js
    end
  end

  def unlike
    @product_id = params[:id]
    @account = current_user.account
    @favorite = @account.favorites.where("product_id = ?", params[:id])
    @favorite.each { |x| x.destroy! }
    # magic line
    respond_to do |format|
      format.html {redirect_to products_path}
      format.js
    end
  end

  def is_product_liked(product)
    current_user.account.favorites.where("product_id = ?", product.id).count > 0
  end

private

  def product_params
    params.require(:product).permit(:name, :price, :description, :quantity, :image)
  end

end
