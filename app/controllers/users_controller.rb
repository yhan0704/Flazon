class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :show]
  before_action :authorized, except: [:index, :about, :contact]
  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_strong_params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit

  end

  def show

  end

  private
    def find_user
      @user = User.find(params[:id])
    end
    def user_strong_params
      params.require(:user).permit(:username, :password, :email)
    end
end
