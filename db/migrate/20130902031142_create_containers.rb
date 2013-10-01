class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.references :basket, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
