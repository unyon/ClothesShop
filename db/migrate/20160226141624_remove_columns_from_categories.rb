class RemoveColumnsFromCategories < ActiveRecord::Migration
  def change
  	remove_column :categories, :type
  	remove_column :categories, :size
  	remove_column :categories, :brand
  	remove_column :categories, :gender
  	remove_column :categories, :condition
  	remove_column :categories, :sale
  end
end
