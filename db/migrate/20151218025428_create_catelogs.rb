class CreateCatelogs < ActiveRecord::Migration
  def change
    create_table :catelogs do |t|
      t.string:title
      t.string:path
      t.timestamps
    end
  end
end
