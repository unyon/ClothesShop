class DropColumnFromSizes < ActiveRecord::Migration
  def change
  	remove_column :sizes, :size
  end
end
