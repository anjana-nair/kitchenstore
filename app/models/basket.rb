class Basket < ActiveRecord::Base
  has_many :products, :through => :containers
end
