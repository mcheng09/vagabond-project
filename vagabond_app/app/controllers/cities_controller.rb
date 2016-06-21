class CitiesController < ApplicationController
  def index
    @city = City.all
    render :index
  end

  def posts
    @posts = City.find(params[:id]).posts
  end

end
