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
    @user = User.create(user_params)
    login(@user)
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    render :show
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def posts
    @posts = User.find(params[:id]).posts
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :location, :password)
  end


end
