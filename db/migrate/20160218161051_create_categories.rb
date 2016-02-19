class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :type
    	t.string :size
    	t.string :brand
    	t.string :gender
    	t.string :condition
    	t.string :sale

      t.timestamps
    end
  end
end
