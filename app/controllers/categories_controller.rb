class CategoriesController < ApplicationController
  def index
    @cat = Category.all
    @user = User.new
    if @user.save
      flash[:notice] = 'Session started'
      # respond_to do |format|
      #   format.html { redirect_to posts_path }
      #   format.js
      # end
    else
      flash[:error] = @user.errors.full_messages_to_sentence
      render 'index'
    end
  end
end
