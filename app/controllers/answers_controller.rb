class AnswersController < ApplicationController
  ActionController::Parameters.permit_all_parameters = true
  def new
    #delete previous answers for this user
    Answer.delete_all(user_id: current_user.id)

    @user_id = current_user.id
    @category = Category.find(params[:cat_id])
    @answer_array = []
    # this process loads up an array with an answer object for each question. The answer_text is empty.
    if @category != nil #this protects the route if a user changes the category id in the route.
      @questions = Category.find(params[:cat_id]).questions.order(:presentation_type)
      @questions.each do |q|
        @answer_array << Answer.new(category_id: params[:cat_id],user_id: @user_id, question_id: q.id)
      end
    else
      redirect_to root_path
    end
  end

  def create
    # for each hash in the answers param, we create a new Answer record. answer_params is defined in the private
    # section
    params["answers"].each do |answer|
      Answer.create(answer_params(answer))
    end
    last_answer = Answer.last #in order to get the correct category and user id, I cheat and read the last answer record that was just created.
    my_path = "/categories/" + last_answer.category_id.to_s + "/users/" + last_answer.user_id.to_s + "/products/1/index"
    redirect_to my_path
  end

  def edit
        # this process loads up an array with an answer object for each question. The answer_text is not empty and the key difference is that we put the
        # answer_id in a column called stored_answer_id. If the answer_id is put in the id field, the fields_for will not work.

    answers = Answer.where("user_id = ?",params[:user_id]).order(:question_id)
    cat_id = answers.first.category.id
    @category = Category.find(cat_id)
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
