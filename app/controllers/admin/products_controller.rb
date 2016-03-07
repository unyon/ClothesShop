class Admin::ProductsController < ApplicationController


	before_action :authenticate_admin!

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
		@products = Product.find_by_id(params[:id])
		return render_not_found if @product.blank?
	end

	def new
		@products = Product.new 
		@categories = Category.all
		@sizes = Size.all
	end

	def create
		@product = Product.create(product_params)
		#@products.category_id = params[:category_id]
	    #@category = Category.find_by(params[:category_id])
	    if params[:new_category].present? 
	    	category = Category.create(kind: params[:new_category])
	    	@product.category = category
		end

		if @product.save 
		 redirect_to root_path
		else
		 render 'new'
		end 
	end
		
	def edit
			@product = Product.find_by_id(params[:id])
			return render not_found if @product.blank?
	end

	def update
		@product = Product.find_by_id(params[:id])
		return render_not_found if @product.blank?
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
		params.require(:product).permit(:title, :description, :price, :photo, :category_id, :brand, :size_id, :gender, :condition, :sale, :row_order_position)
	end


end

