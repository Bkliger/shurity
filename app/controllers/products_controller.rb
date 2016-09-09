class ProductsController < ApplicationController
  def index
    @products = Product.where("batch_no = ?",params[:batch_no]).order(score: :desc)
  end

  def show
    @product = Product.find(params[:id])
  end

  def show2
    @product = Product.find(params[:id])
    @retailers = Purchase.where(product_id: @product.id)
    render :show2


  end
end
