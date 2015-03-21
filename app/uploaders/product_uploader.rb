class ProductUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    'assets/uploads/products'
  end
  process :resize_to_fill => [1132,548]
end
