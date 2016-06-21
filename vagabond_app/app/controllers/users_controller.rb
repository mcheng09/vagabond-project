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
      login(@user)
      redirect_to "/users/#{@user.id}"
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:id])
    redirect_to redirect_to "/users/#{@user.id}"
  end


  def posts
    @posts = User.find(params[:id]).posts
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :avatar)
  end


end
