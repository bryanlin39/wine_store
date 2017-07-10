class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :description
      t.attachment :image

      t.timestamps
    end
  end
end
