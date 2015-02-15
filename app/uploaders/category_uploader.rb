class CategoryUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process :resize_to_fill => [358,198]
end
