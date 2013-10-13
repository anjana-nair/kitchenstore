FactoryGirl.define do
  
  # factory :product do
    # name "collapsible bowl"
    # description "Can use it as a doritos tray when collapsed and as a fruit bowl when expanded"
    # price  24.99    
  # end
  
  factory :casserole, :class => Product do
    name "lightweight casserole"
    description "Can use it to hold cranberry juice"
    price  25.99 
  end
  
  factory :saucepan, :class => Product do
    name "medium saucepan"
    description "Can use it to heat food and liquids"
    price  30 
  end
  
  
  
  factory :premium, :class => Product do
    name "crystalline bowl"
    description "Can use it to hold cranberry juice"
    price  25.99 
  end
    
  factory :product, aliases: [:a_kitchenware_product] do
    id 99
    name "collapsible bowl"
    description "Can use it as a doritos tray when collapsed and as a fruit bowl when expanded"
    price  24.99    
  end
  
  
end