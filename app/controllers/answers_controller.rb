class AnswersController < ApplicationController
  def new
    user = User.new
    user.save
    user_id = User.last.id
    @answer_array = []
    @questions = Category.find(params[:cat_id]).questions
    @questions.each do |q|
      @answer_array << Answer.new(category_id: params[:cat_id],user_id: user_id, question_id: q.id)
    end
  end

  def create
    params["answers"].each do |answer|
    Answer.create(answer_params(answer))
   end
    redirect_to root_path

  end


  private

  def answer_params(my_params)
    my_params.permit(:answer_text,:category_id,:user_id,:question_id)
  end

end
