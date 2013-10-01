class DeletColumnCodesFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :code
  end
end
