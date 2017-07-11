class FavoritesController < ApplicationController
  def new
    @account = current_user.account
    @favorite = @account.favorites.new(product_id: params[:product_id])
    @favorite.save
    redirect_to products_path
  end

end
