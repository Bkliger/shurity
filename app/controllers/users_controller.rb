class UsersController < ApplicationController
  def new
    @user = User.new
    @questions = Category.find(params[:cat_id]).questions
    @question_array = []
    @questions.each do |q|
      hash = q.text + ":" + q.presentation_type
      @question_array.push(hash)
    end
  end
  def create

  end


end
