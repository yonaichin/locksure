class HomeController < ApplicationController
  def index
    #@slides = Slide.all
    @bolt_cid = Category.where(:name=> 'Bolt & Screw').first.id if Category.where(:name => 'Bolt & Screw').exists?
    @nut_cid = Category.where(:name=> 'Nut').first.id if Category.where(:name => 'Nut').exists?
    @stamping_cid = Category.where(:name=> 'Stamping').first.id if Category.where(:name => 'Stamping').exists?
    @bolt_img = Product.where(:category_id=> @bolt_cid).order('RAND()').limit(1)
    @nut_img = Product.where(:category_id=> @nut_cid).order('RAND()').limit(1)
    @stamping_img = Product.where(:category_id=> @stamping_cid).order('RAND()').limit(1)
    @slides= @bolt_img + @nut_img + @stamping_img
  end
end
