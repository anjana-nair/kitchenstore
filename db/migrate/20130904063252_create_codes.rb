class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :name
      t.integer :codeable_id
      t.string :codeable_type
      
      # t.references :codeable, : polymorphic => true

      t.timestamps
    end
  end
end
