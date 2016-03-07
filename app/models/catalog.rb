class Catalog < ActiveRecord::Base

  def catalogtype_enum
     [['image'],['file']]
  end
  validates :catalogtype, :presence => true
  mount_uploader :path, CatalogUploader

end
