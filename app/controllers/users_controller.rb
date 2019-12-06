class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  # this method needs to be in here to provide control over your `new` view.
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to home_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end