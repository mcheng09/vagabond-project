class CitiesController < ApplicationController
  def index
    @city = City.all
    render :index
  end

  def show

    @post = Post.find(params[:id])
    @user = User.find(params[:id])
    @city = City.find(params[:id])
    @posts = City.find(params[:id]).posts
    @confirm_msg = "Are you sure you want to delete #{@post.title} ?"
    @comment = Comment.all
    render :show
  end

  def posts
    @posts = City.find(params[:id]).posts
    @city = City.find(params[:id])
  end

  # def comment

  # end
  def create_comment
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:success] = 'Your comment was successfully added!'

      redirect_to root_path
    else
      render 'new'
    end
  end

  #   def create
  #   @post = .posts.build(cities_params)
  #   if @post.create
  #     redirect_to city_posts_path
  #   else
  #     redirect_to new_city_post_path
  #   end
  # end



end
