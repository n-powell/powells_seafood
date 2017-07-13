class ProductsController < ApplicationController
  def new
    @user = current_user
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path(@user)
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
    @user = current_user
    @product = Product.find(params[:id])
    @new_review = @product.reviews.new
    @new_review.user = current_user
    @current_user = current_user
  end

  def edit
    @user = current_user
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      flash[:alert] = "Sorry product not successfully updated!"
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:image, :title, :description, :price)
  end
end
