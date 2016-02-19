class AddSizesToProducts < ActiveRecord::Migration
  def change
  	    add_column :products, :type, :string
  	    add_column :products, :size, :string
  	    add_column :products, :brand, :string
  	    add_column :products, :gender, :string
  	    add_column :products, :condition, :string
  	    add_column :products, :sale, :boolean
  end
end
