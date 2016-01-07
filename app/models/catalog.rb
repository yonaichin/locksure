class Catalog < ActiveRecord::Base

  def type_enum
     [['image'],['file']]
  end

  validates :type, :presence => true
  mount_uploader :path, CatalogUploader

end
