class ProductsController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
  	@categories = Category.find(params[:id])
    @products = Product.where(category_id: params[:id])
  end
end