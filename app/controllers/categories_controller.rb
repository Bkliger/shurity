class CategoriesController < ApplicationController
  def index
    @cat = Category.all

  end

  def new
    @cat = Category.new
  end

  def create

    @cat = Category.create(category_params)
          redirect_to catList_path
  end

  def show
    @cat = Category.find(params[:id])
    render :show
  end

  def edit
    @cat = Category.find(params[:id])
    render :edit
  end

  def update
      @cat = Category.find params[:id]
    @cat.update_attributes(category_params)
      redirect_to catList_path
  end

  def destroy

    category = Category.find_by_id(params[:id])
    category.destroy
      redirect_to catList_path
  end

  def get_categories
# to handle the case where the user blanks out the search field
    if params[:catString] == ""
      query_param = "asdfgsdagadsg%"
    else
      query_param = params[:catString].downcase + "%"
    end
    @cat = Category.where("lower(name) LIKE ?", query_param)
    respond_to do |format|
      format.js
    end
  end

  def list
    @cat = Category.all
    render :catList
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end


end
