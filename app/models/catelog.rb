class Catelog < ActiveRecord::Base
  mount_uploader :path, CatelogUploader
end
