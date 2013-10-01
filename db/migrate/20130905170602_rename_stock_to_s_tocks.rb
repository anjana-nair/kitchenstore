class RenameStockToSTocks < ActiveRecord::Migration
  def change
    rename_table :stock, :stocks
  end
end
