class AddDefaultToOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column(:orders, :total_price)
    add_column(:orders, :total_price, :decimal, :default => 0)
  end
end
