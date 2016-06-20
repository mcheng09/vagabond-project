class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def login
  end


end
