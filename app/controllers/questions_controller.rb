class QuestionsController < ApplicationController
  def index
    @questions = Category.find(params[:cat_id]).questions
  end
end
