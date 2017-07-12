class Favorite < ApplicationRecord
  belongs_to :product
  belongs_to :account

  scope :find_by_product_id, -> (user, product_id) {where(:product_id => product_id, :account_id => user.account.id)}

end
