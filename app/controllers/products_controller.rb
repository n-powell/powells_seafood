class ProductsController < ApplicationController
  def new
    @user = current_user
    @product = @user.products.new
  end

  def create
    @user = User.find(params[:user_id])
    @product = @user.products.new(product_params)
    if @product.save
      redirect_to user_products_path(@user)
    else
      render :new
    end
  end

  def index
    @products = Product.all
  end

  private

  def product_params
    params.require(:product).permit(:image, :title, :description, :price)
  end
end
