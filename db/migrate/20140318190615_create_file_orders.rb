class CreateFileOrders < ActiveRecord::Migration
  def change
    create_table :file_orders do |t|
      t.string :name
      t.string :file

      t.timestamps
    end
  end
end
