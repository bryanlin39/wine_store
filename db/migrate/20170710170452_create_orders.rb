class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :account_id
      t.string :status
      t.decimal :total_price
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :shipping

      t.timestamps
    end
  end
end
