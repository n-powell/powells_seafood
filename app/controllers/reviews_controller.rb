class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @user = @product.user
    @review = @product.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to user_product_path(@user, @product)
    else
      redirect_to user_product_path(@user, @product)
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment)
  end
end
