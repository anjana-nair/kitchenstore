class Category < ActiveRecord::Base
  has_many :stocks
  has_many :products, :through => :stocks
  has_many :codes, :as => :codeable
  
end
