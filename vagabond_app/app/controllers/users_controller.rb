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
        UserMailer.welcome_email(@user).deliver_later
        login(@user)
        redirect_to "/users/#{@user.id}"
      else
        flash[:error] = @user.errors.full_messages.join("-----")
        redirect_to new_user_path
      
    end
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

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to "/users/#{@user.id}"
  end


  def posts
    @posts = User.find(params[:id]).posts
  end

  private

  def user_params


    params.require(:user).permit(:first_name, :last_name, :email, :location, :password, :avatar)

  end


end
