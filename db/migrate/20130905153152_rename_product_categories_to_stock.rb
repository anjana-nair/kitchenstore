class RenameProductCategoriesToStock < ActiveRecord::Migration
  def change
    rename_table :product_categories, :stock
  end
end
