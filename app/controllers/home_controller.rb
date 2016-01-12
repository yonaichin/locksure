class HomeController < ApplicationController

  def index
    @slides = Slide.all
    @products = Product.take(8)
  end
end
