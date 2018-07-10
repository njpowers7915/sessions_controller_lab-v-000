class SessionsController < ApplicationController

  def new
    redirect_to '/login'
  end

  def create
    session[:username] = params[:username]
    redirect_to '/'
  end

  def destroy
    session.delete :username
  end

end
