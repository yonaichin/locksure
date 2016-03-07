class Product < ActiveRecord::Base
  mount_uploader :image, ProductUploader

  validates :name, :category, :presence => true
  belongs_to :category
end
