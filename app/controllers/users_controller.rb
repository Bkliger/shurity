class UsersController < ApplicationController
  def new
    @user = User.new
    @questions = Category.find(params[:cat_id]).questions
    
  end
  def create

  end


end
