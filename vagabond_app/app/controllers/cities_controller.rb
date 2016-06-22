class CitiesController < ApplicationController
  def index
    @city = City.all
    render :index
  end

  def show
    @city = City.find(params[:id])
    @posts = City.find(params[:id]).posts
    render :show
  end

  def posts
    @posts = City.find(params[:id]).posts
    @city = City.find(params[:id])
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
