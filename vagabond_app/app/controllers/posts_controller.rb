class PostsController < ApplicationController

  def index
    @post = Post.all
    render :index
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path
    else
      redirect_to new_post_path
    end
  end


  def show
    @post = Post.find(params[:id])
    @first_name = @post.user.first_name
    @confirm_msg = "Are you sure you want to delete #{@post.title} ?"
    # @user = User.find(params[:id])
    render :show
  end



  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/posts/#{@post.id}"
  end



  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end


  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

end
