class HomeController < ApplicationController

  def index
    #@slides = Slide.all
    @slides = Product.order('RAND()').limit(8)
  end
end
