class RemoveFieldNameFrompRoducts < ActiveRecord::Migration
  def change
  	remove_column :products, :type
  end
end
