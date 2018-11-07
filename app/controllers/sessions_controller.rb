class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name]
      
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to controller: 'sessions', action: 'new'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    if session[:name] != nil
      session[:name].destroy
    end
  end
end
