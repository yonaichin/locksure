class ProductLargeUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  version :thumb do
    process :resize_to_fill => [200,200]
  end
end
