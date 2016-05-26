class CategoriesController < ApplicationController
  def index
    @cat = Category.all
  end
end
