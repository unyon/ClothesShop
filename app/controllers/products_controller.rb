class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		@products = Product.find_by_id(params[:id])
	end



	private

	def product_params
		params.require(:product).permit(:title, :description, :price)
	end
end
