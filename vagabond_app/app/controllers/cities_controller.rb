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
  end

end
