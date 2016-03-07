class AddColumnToSize < ActiveRecord::Migration
  def change
  	add_column :sizes, :name, :string
  end
end
