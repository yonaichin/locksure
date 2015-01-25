class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :descritpion
      t.string :small_image
      t.string :large_image   
    end
  end
end
