class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:user_id])
    render :edit

  end

  def update
    @user = User.find params[:user_id]
    if @user.update(user_params)
      flash[:notice] = "User Successfully Updated"
    else
      flash[:notice] = "Problem with user update"
    end
    redirect_to users_path

  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end


end
