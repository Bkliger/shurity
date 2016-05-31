class AnswersController < ApplicationController
  ActionController::Parameters.permit_all_parameters = true
  def new
    user = User.new
    user.save
    @user_id = User.last.id
    @answer_array = []
    @questions = Category.find(params[:cat_id]).questions.order(:id)
    @questions.each do |q|
      @answer_array << Answer.new(category_id: params[:cat_id],user_id: @user_id, question_id: q.id)

    end
  end

  def create
    params["answers"].each do |answer|
    Answer.create(answer_params(answer))
   end
   last_answer = Answer.last
    my_path = "/categories/" + last_answer.category_id.to_s + "/users/" + last_answer.user_id.to_s + "/products"
    redirect_to my_path

  end

  def edit
    answers = Answer.find_by_sql ["Select * from answers where user_id = ?", params[:user_id]]
      @update_answer_array = []
    answers.each do |a|

      @update_answer_array << Answer.new(id: a.id, category_id: a.category_id, user_id: a.user_id, question_id: a.question_id, answer_text: a.answer_text)
    end


  def update

    params["answers"].each do |answer|
    Answer.update(answer_params(answer))
   end
   redirect_to root_path

  end




  end


  private

  def answer_params(my_params)
    my_params.permit(:answer_text,:category_id,:user_id,:question_id)
  end

end
