class AddSeletionOptionFieldToCatalog < ActiveRecord::Migration
  def change
    add_column :catalogs, :type, :string
  end
end
