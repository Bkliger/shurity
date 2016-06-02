class ProductsController < ApplicationController
  def index
    @products = Product.where("batch_no = ?",params[:batch_no]).order(score: :desc)
  end

  def show
    @product = Product.find(params[:id])
  end
end
