class Slide < ActiveRecord::Base
  mount_uploader :image, SlideUploader
end