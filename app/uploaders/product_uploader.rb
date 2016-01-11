class ProductUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    'assets/uploads/products'
  end
  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?

  end
  process :resize_to_fill => [800,600]
  #process :resize_to_fill => [1132,548]
  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end
