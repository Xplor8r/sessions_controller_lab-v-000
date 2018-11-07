class SessionsController < ApplicationController
  def new
  end

  def create

    if params[:name].empty? || params[:name] == ""
      redirect_to controller: 'sessions', action: 'new'
    else params[:name]
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    if session[:name] != nil
      session[:name].destroy
    end
  end
end
