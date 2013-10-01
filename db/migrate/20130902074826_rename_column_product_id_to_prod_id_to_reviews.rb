class RenameColumnProductIdToProdIdToReviews < ActiveRecord::Migration
  def change
    rename_column :reviews, :product_id, :prod_id
  end
end
