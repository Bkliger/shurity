class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = current_user
    render :edit

  end

  def update
    @user = User.find params[:user_id]
    if @user.update(post_params)
      flash[:notice] = "User Successfully Updated"
    else
      flash[:notice] = "Problem with user update"
    end
    redirect_to edit_user_path

  end

  private

  def post_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end


end
