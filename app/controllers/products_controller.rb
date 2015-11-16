class ProductsController < ApplicationController

	def index
		@products = Product.all  #el @ nos va permitir acceder a esa variable desde la vista		
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(products_params)
		if @product.save
			redirect_to products_path, notice: "El producto fue publicado con éxito"
		else
			render :new
		end
		
	end

	private 
		def products_params
			params.require(:product).permit(:name, :url, :description)
			
		end

end