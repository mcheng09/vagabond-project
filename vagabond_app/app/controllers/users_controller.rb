class UsersController < ApplicationController

  def index
    @user = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:users).permit(:first_name, :last_name, :email, :password)
  end


end
