class ReviewsController < ApplicationController
  
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create(params[:review].permit(:commenter, :body))
    redirect_to product_path(@product)
  end
  
end
