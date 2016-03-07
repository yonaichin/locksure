class Category < ActiveRecord::Base
  has_many :products
  validates :name, :image, :presence => true
  mount_uploader :image, CategoryUploader
end
