class RenameProductColumn < ActiveRecord::Migration
  def change
    rename_column :products, :description, :attachment
  end
end
