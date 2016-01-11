class CategoryUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    'assets/uploads/category'
  end
  #process :resize_to_fill => [358,239]
  process :resize_to_fill => [400,300]
end
