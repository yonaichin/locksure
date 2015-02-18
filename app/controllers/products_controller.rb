class ProductsController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @products = Product.where(category_id: params[:id])
  end
end