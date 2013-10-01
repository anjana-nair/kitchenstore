class Product < ActiveRecord::Base
  
  # default_scope lambda{order('name ASC')}
  
  scope :unpriced_products, lambda{where("price < 0")}
  
  has_many :reviews, :dependent => :destroy, :foreign_key => "prod_id"
  
  has_many :categories, :through => :stocks
  
  has_and_belongs_to_many :carts
  
  has_many :stocks
  
  has_many :codes, :as => :codeable
  
  accepts_nested_attributes_for :categories
  
  validates :name, :presence => :true, :length => {:minimum => 5 }
  
  validates :description, :length => {:minimum => 10 }, :format => {:with => /\A[(a-zA-Z) | ( )]+\z/, :message => "Only letters allowed" }
  
  validates :price, :numericality => :true
  
  validates :size, :inclusion => {:in => %w(small medium large), :message => "%{value} is not a value size"}, :allow_blank => :true, :on => :create
  
  after_find do |product|
    Rails.logger.debug("\n\n *** The after find callback has been initiated *** \n\n")
  end
  
  after_initialize do |product|
    Rails.logger.debug("\n \n *** The after initialize callback has been initiated ***\n\n")
  end
  
  
  before_validation :check_if_price_valid
  
  after_validation do
    Rails.logger.debug("\n \n **** The after validation callback has been initiated... ***\n\n")
  end
  
  before_save do
    name.concat("_a_rubysoftware_product").capitalize
    Rails.logger.debug("\n\n *** The before save callback has been initiated *** \n\n")
    return false;    
  end
  
  
  before_create do
    Rails.logger.debug("\n\n *** The before create callback has been initiated *** \n\n")
  end
  
  around_create :do_this_around_create
  
  after_create do
    Rails.logger.debug("\n\n *** The after create callback has been initiated *** \n\n")
  end
  
  after_save do
    Rails.logger.debug("\n\n *** The after save callback has been initiated *** \n\n")
  end
  
  before_destroy do
    Rails.logger.debug("\n\n *** The before destroy callback has been initiated *** \n\n") 
  end
  
  around_destroy :do_this_around_destroy
    
  after_destroy do
    Rails.logger.debug("\n\n *** The after destroy callback has been initiated *** \n\n")    
  end
  
  around_save :do_this_around_save
    
  
  private
  def check_if_price_valid
    if price.to_i <= 0
      errors.add(:price, "Price needs to have a value greater than $0")
    end
      Rails.logger.debug("\n\n *** The before validation callback has been initiated *** \n\n")
  end

  def do_this_around_create
    Rails.logger.debug("\n\n *** The around create callback has been initiated *** \n\n") 
    yield
  end
  
  def do_this_around_save
    Rails.logger.debug("\n\n *** The around save callback has been initiated *** \n\n") 
    yield
  end
  
  def do_this_around_destroy
    Rails.logger.debug("\n\n *** The around destroy callback has been initiated *** \n\n") 
    yield
  end
  
  # scope :select_required_fields_only, lambda{select("name,description")}
end