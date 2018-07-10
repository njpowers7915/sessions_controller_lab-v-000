class SessionsController < ApplicationController

  def new
    redirect_to '/login'
  end

  def create
    params
    if session[:name] && session[:name] != ''
      if session[:name] == params[:name]
        redirect_to '/'
      else
        params[:name] = session[:name]
        binding.pry
        redirect_to '/'
      end
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :username
  end

end
