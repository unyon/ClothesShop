class AddColumnKindtoProducts < ActiveRecord::Migration
  def change
  	  	add_column :products, :kind, :string
  end
end
