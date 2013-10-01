class AddNumberOfStarsToStars < ActiveRecord::Migration
  def change
    add_column :stars, :number_of_stars, :numeric
  end
end
