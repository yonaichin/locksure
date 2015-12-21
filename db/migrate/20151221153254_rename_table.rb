class RenameTable < ActiveRecord::Migration
  def change
    rename_table(:catelogs,:catalogs)
  end
end
