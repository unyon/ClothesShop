class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		@products = Product.find_by_id(params[:id])
		return root_path if @products.blank?
	end




	private

	 def product_params
	 	params.require(:product).permit(:title, :description, :price, :photo, :kind, :brand, :size, :gender, :condition, :sale)
	 end
end
