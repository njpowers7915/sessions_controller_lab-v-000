class SessionsController < ApplicationController

  def new
    redirect_to '/login'
  end

  def create
    if session[:name] && session[:name] != ''
      session[:username] = params[:username]
      redirect_to '/'
    else
      redirect_to '/login'
  end

  def destroy
    session.delete :username
  end

end
