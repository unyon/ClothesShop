class Admin::ProductsController < ApplicationController


	before_action :authenticate_admin!

	def index	
		@products = Product.all
	end

	def show
		@products = Product.find_by_id(params[:id])
		return render_not_found if @product.blank?
	end

	def new
		@products = Product.new 
	end

	def create
		@products = Product.create(product_params)
		#@products.category_id = params[:category_id]
	    #@category = Category.find_by(params[:category_id])
		if @products.save 
		 redirect_to root_path
		else
		 render 'new'
		end 
	end
		
	def edit
			@products = Product.find_by_id(params[:id])
			return render_not_found if @products.blank?
	end

	def update
		@products = Product.find_by_id(params[:id])
		return render_not_found if @products.blank?
		@product.update_attributes(product_params)
		if @product.valid?
			redirect_to root_path
		else
			return render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@products = Product.find_by_id(params[:id])
	    return render_not_found if @products.blank?
	    @products.destroy
		redirect_to root_path
	end

	private

	def product_params
		params.require(:product).permit(:title, :description, :price, :kind, :brand, :size, :gender, :condition, :sale)
	end


end

