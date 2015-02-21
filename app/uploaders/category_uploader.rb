class CategoryUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    'uploads/category'
  end
  process :resize_to_fill => [358,239]
end
