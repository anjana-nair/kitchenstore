class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.references :review, index: true

      t.timestamps
    end
  end
end
