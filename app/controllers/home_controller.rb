class HomeController < ApplicationController
  def index
    #@slides = Slide.all
    @bolt_cid = Category.where(:name=> 'Bolt & Screw').first.id
    @nut_cid = Category.where(:name=> 'Nut').first.id
    @stamping_cid = Category.where(:name=> 'Stamping').first.id
    @bolt_img = Product.where(:category_id=> @bolt_cid).order('RAND()').limit(1)
    @nut_img = Product.where(:category_id=> @nut_cid).order('RAND()').limit(1)
    @stamping_img = Product.where(:category_id=> @stamping_cid).order('RAND()').limit(1)
    @slides= @bolt_img + @nut_img + @stamping_img
  end
end
