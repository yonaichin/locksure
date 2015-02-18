namespace :import do
  desc 'Create category and import corresponding products'
  task  :product => :environment do
    categories_directory = Dir["vendor/images/*"]
    categories_name = categories_directory.each do |dir|
      pattern = /vendor\/images\/(.+)/
      name = dir.match(pattern)[1]
      @category = Category.create(name: name)
      create_products(dir)
    end
  end

  def create_products(dir)
    images = Dir[dir + '/*']
    images.each do |image|
      image_name = File.basename(image, '.*')
      picture = File.open(image)
      @category.products.new(name: image_name, image: picture)
      @category.save
    end
  end
end