class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
    	t.integer :product_id

      t.timestamps
    end
    add_index :charges, :product_id
  end
end
