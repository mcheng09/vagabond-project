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
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      redirect_to new_post_path
    end
  end

  private

  def post_params
    params.require(:posts).permit(:title, :description)
  end

end
