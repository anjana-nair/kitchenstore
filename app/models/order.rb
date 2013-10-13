class Order < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :cart
  
  validates :card_number, :presence => :true, :if => :paid_with_card?
  
  
  def paid_with_card?
    payment_type == "card"
  end
  
end
