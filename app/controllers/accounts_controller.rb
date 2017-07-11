class AccountsController < ApplicationController

  def show
    @orders = current_user.account.orders
    @favorites = current_user.account.favorites
  end

end
