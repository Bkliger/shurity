class AnswersController < ApplicationController
  ActionController::Parameters.permit_all_parameters = true
  def new
    user = User.new
    user.save
    @user_id = User.last.id
    @answer_array = []
    # this process loads up an array with an answer object for each question. The answer_text is empty.
    @questions = Category.find(params[:cat_id]).questions.order(:presentation_type)
    @questions.each do |q|
      @answer_array << Answer.new(category_id: params[:cat_id],user_id: @user_id, question_id: q.id)

    end
  end

  def create
    # for each hash in the answers param, we create a new Answer record. answer_params is defined in the private
    # section
    params["answers"].each do |answer|
    Answer.create(answer_params(answer))
   end
   last_answer = Answer.last
    my_path = "/categories/" + last_answer.category_id.to_s + "/users/" + last_answer.user_id.to_s + "/products/1/index"
    redirect_to my_path

  end

  def edit

    answers = Answer.where("user_id = ?",params[:user_id]).order(:question_id)
      @update_answer_array = []
    answers.each do |a|
      check_answer = Answer.new(category_id: a.category_id, user_id: a.user_id, question_id: a.question_id, answer_text: a.answer_text, stored_answer_id: a.id)
      @update_answer_array << check_answer
    end


  def update
    params["answers"].each do |answer|
      if answer[:stored_answer_id] != nil
        answer_obj = Answer.find(answer[:stored_answer_id].to_i)
        answer_obj.update(answer)
      end
    end
    last_answer = Answer.last
    my_path = "/categories/" + last_answer.category_id.to_s + "/users/" + last_answer.user_id.to_s + "/products/2/index"
    # binding.pry
    redirect_to my_path

  end




  end


  private

  def answer_params(my_params)
    my_params.permit(:answer_text,:category_id,:user_id,:question_id)
  end

end
