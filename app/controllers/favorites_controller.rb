class FavoritesController < ApplicationController
  def new
    @account = current_user.account
    @favorite = @account.favorites.new(product_id: params[:product_id])
    @favorite.save
    respond_to do |format|
      format.html {redirect_to products_path}
      format.js
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    respond_to do |format|
      format.html {redirect_to products_path}
      format.js
    end

  end

end
