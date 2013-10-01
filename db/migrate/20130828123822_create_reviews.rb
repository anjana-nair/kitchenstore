class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :commenter
      t.text :body
      t.references :product, index: true

      t.timestamps
    end
  end
end
