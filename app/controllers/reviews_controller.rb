class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    @review = @product.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      flash[:notice] = "Review successfully added!"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Sorry review not successfully added!"
      redirect_to product_path(@product)
    end
  end

  def destroy
    @review = Review.find(params[:id])
    product = @review.product
    user = current_user
    @review.destroy
    flash[:notice] = "Review deleted!"
    redirect_to product_path(user, product)
  end

  private
  def review_params
    params.require(:review).permit(:comment)
  end
end
