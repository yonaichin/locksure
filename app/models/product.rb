class Product < ActiveRecord::Base
  mount_uploader :image, ProductUploader

  belongs_to :category
end