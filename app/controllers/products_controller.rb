class ProductsController < ApplicationController
  
  before_filter :get_id, :except => [:new, :index, :create]
  before_filter :authenticate_admin!
  
  def new
    @product = Product.new
  end
  
  def index
    @products = Product.all
  end
  
  
  def create
    @product = Product.new(product_params)
    @category = build_category
    if @product.save
      redirect_to :action => :show, :id => @product.id
    else
      render 'new'
    end
    
    
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    
    @category = build_category
    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
    
    
  end
  
  def destroy
    product.delete
    redirect_to products_path
  end
  
  private
  def product_params
    
    params.require(:product).permit(:name, :description, :price)
    
  end
  
  def category_params
    
    params.require(:category).permit(:name, :description)
    
  end
  
  def build_category
    @product.categories.build(category_params) unless params[:category][:name].blank?
  end
  
  def get_id
    @product = Product.find(params[:id])
  end
  
end
