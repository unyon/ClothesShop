class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.timestamps
    end
    add_index :orders, :product_id
  end
end
