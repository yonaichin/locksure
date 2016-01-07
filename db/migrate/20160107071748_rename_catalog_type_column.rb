class RenameCatalogTypeColumn < ActiveRecord::Migration
  def change
    rename_column :catalogs, :type, :catalogtype
  end
end
