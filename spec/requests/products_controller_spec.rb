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
  
  context "when viewing a product" do
    
    it "should show the review form" do
      product = FactoryGirl.create(:a_kitchenware_product) 
      get "/products/#{product.id}"
      assert_select "p", :text => "Commenter".to_s
    end
    
  end
  
end