class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :account

  after_create :register_account

  def register_account
    @user = User.last
    @account = Account.new(user_id: @user.id)
    @user.account = @account
    @user.save
    @account.save
  end


end
