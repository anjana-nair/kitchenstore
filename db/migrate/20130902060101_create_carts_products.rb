class CreateCartsProducts < ActiveRecord::Migration
  def change
    create_table :carts_products do |t|
      t.references :cart
      t.references :product
    end
  end
end
