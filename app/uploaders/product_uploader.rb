class ProductUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    'uploads/products'
  end
  process :resize_to_fill => [1132,348]
end