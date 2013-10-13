require 'spec_helper'


describe ReviewsController do
  
  context "when creating a review" do
    
    it "should show the review for the product" do
        product = FactoryGirl.create(:a_kitchenware_product) 
        post "/products/#{product.id}/reviews", {:review => {:name => "anjana", :commenter => "great product"}}      
        expect(response).to redirect_to(product_path(assigns(:product)))
    end     
    
  end
  
end
