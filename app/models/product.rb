class Product < ActiveRecord::Base
  mount_uploader :large_image, ProductLargeUploader
  mount_uploader :small_image, ProductLargeUploader

  belongs_to :category
end