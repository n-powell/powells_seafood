class ProductsController < ApplicationController
  def new
    @user = current_user
    @product = @user.products.new
  end

  def create
    @user = User.find(params[:user_id])
    @product = @user.products.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to user_products_path(@user)
    else
      flash[:alert] = "Sorry product not successfully added!"
      render :new
    end
  end

  def index
    @products = Product.all
    @user = current_user
  end

  def show
    @user = User.find(params[:user_id])
    @product = @user.products.find(params[:id])
    @new_review = @product.reviews.new
    @new_review.user = current_user
    @current_user = current_user
  end

  def edit
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to user_products_path
    else
      flash[:alert] = "Sorry product not successfully updated!"
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to user_products_path
  end

  private

  def product_params
    params.require(:product).permit(:image, :title, :description, :price)
  end
end
