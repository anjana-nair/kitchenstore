require 'spec_helper'

describe Product do
  
  it "should return a list ordered by name" do
    
    
    product1 = Product.create(:name => "aaaaa", :description => "a test product", :price => 34.99)
    product2 = Product.create(:name => "bbbbb", :description => "a test product", :price => 34.99)
    
    
    expect(Product.first).to eq(product1)
    expect(Product.limit(2).offset(1).first).to eq(product2)
    
  end
  
  
  
end