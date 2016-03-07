class DropColumnsProductsSizeKind < ActiveRecord::Migration
  def change
  	remove_column :products, :size
  	remove_column :products, :kind
  end
end
