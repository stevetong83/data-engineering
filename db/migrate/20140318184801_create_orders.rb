class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :purchaser_name
      t.integer :file_id
      t.text :item_description
      t.decimal :item_price
      t.integer :purchase_count
      t.string :merchant_address
      t.string :merchant_name

      t.timestamps
    end
    add_index :orders, :file_id
  end
end
