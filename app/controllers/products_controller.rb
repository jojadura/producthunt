class ProductsController < ApplicationController

	def index
		@products = Product.all  #el @ nos va permitir acceder a esa variable desde la vista		
	end

	def new
		@product = Product.new
	end
end