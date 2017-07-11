class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :product_id
      t.integer :account_id
      t.timestamps
    end
  end
end
