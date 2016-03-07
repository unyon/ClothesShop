# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  price       :integer
#  created_at  :datetime
#  updated_at  :datetime
#  —force      :string(255)
#  brand       :string(255)
#  gender      :string(255)
#  condition   :string(255)
#  sale        :boolean
#  photo       :string(255)
#  category_id :integer
#  size_id     :integer
#

class ProductsController < ApplicationController
	def index
		if params[:search]
			@products = Product.search(params[:search]).order("created_at DESC")
		elsif params[:category_id]
		   @category = Category.find(params[:category_id])
		   @products = @category.products
		elsif params[:size_id]
		   @size = Size.find(params[:size_id])
		   @products = @size.products
		else
		   @products = Product.all
		end
	end

	def show
		@product = Product.find_by_id(params[:id])
		@category = Category.find_by_id(params[:id])
		return root_path if @product.blank?
	end


	private

	 def product_params
	 	params.require(:product).permit(:title, :description, :price, :photo, :brand, :gender, :condition, :sale, :category_id, :size_id)
	 end
end
