class CatalogUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include CarrierWave::MimeTypes
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
  def store_dir
    'assets/uploads/catalogs'
  end
  def extension_white_list
    %w(jpg jpeg  png pdf rar)
  end

  #version :path, :if => :is_image? do
  #  process :resize_to_fill => [1132,548]
  #end
  def filename
    "#{model.title}.#{file.extension}" if original_filename.present?
  end

protected
  def is_image?(new_file)
    new_file.content_type.start_with? 'image'
  end
end
