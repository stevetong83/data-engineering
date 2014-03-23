class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :uploaded_file_id
      t.integer :merchant_id
      t.integer :item_id
      t.integer :purchaser_id
      t.integer :purchase_count

      t.timestamps
    end
    add_index :orders, :uploaded_file_id
    add_index :orders, :merchant_id
    add_index :orders, :item_id
    add_index :orders, :purchaser_id
  end
end
