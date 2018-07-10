class SessionsController < ApplicationController

  def new
    redirect_to '/login'
  end

  def create
    params
    binding.pry
    if session[:name] && session[:name] != ''
      session[:name] = params[:name]
      binding.pry
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :username
  end

end
