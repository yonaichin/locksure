class Product < ActiveRecord::Base
  mount_uploader :content, ProductLargeUploader
end