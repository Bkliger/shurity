class ProductsController < ApplicationController
  def index
    @products = Product.where("batch_no = '1'").order(score: :desc)
  end

  def show
    @product = Product.find(params[:id])
  end
end
