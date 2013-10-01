class Review < ActiveRecord::Base
  belongs_to :product
  has_many :ratings, :class_name => "Star"
end
