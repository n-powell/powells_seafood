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
    @user = current_user
  end

  def show
    @user = User.find(params[:user_id])
    @product = @user.products.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to user_products_path
    else
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
