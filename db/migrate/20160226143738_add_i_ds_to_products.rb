class AddIDsToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :category_id, :integer
  	add_column :products, :size_id, :integer

  end
end
