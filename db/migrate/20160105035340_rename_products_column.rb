class RenameProductsColumn < ActiveRecord::Migration
  def change
    rename_column(:products,:descritpion,:description)
  end
end
