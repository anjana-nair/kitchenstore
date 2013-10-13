require 'spec_helper'

describe ProductsController do
  
    context "when accessing the root" do
      it "responds successfully with a HTTP 200 status code" do
        
        get :index
        expect(response).to be_success
        expect(response.status).to eq(200)      
        
      end
      
      it "renders the index template" do
         get :index
         expect(response).to render_template("index")
       end
       
      
      it "loads all of the products into @products" do
        
        product1 = Product.create(:name => "casserole", :description => "to keep food warm", :price => 54.99)
        product2 = Product.create(:name => "sauce pan", :description => "to heat food", :price => 54.99)
        
        get :index
        expect(assigns(:products)).to match_array([product1, product2])      
      end 
      
      it "loads all of the products into @products" do
        
        product1 = FactoryGirl.create(:casserole, :name => "medium size casserole")
        product2 = FactoryGirl.create(:saucepan) 
        # product2 = FactoryGirl.create(:product,:name => "sauce pan", :description => "to heat food", :price => 54.99 )
        
        get :index
        expect(assigns(:products)).to match_array([product1, product2])      
      end 
  end    

end
