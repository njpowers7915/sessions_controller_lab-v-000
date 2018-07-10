class SessionsController < ApplicationController

  def new
    redirect_to '/login'
  end

  def create
    if session[:name] && session[:name] != ''
      session[:name] = params[:name]
      redirect_to '/'
    binding.pry
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :username
  end

end
