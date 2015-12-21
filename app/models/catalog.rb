class Catalog < ActiveRecord::Base
  mount_uploader :path, CatalogUploader
end
