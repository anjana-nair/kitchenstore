require 'spec_helper'
describe "home page" do
  describe "product list" do
    
  it "shows the name of a saved product" do
    user = Product.create(:name => "casserole", :description => "to keep food warm", :price => 54.99)
    get "/"
    assert_select "tr>td", :text => "casserole".to_s 
  end
  
  it "has a link to see product details" do
    product = Product.create(:name => "casserole", :description => "to keep food warm", :price => 54.99)
    
    get "/"
    
    assert_select "a", :href => product_path(product.id)
    
  end
  end
end