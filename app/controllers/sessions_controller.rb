class SessionsController < ApplicationController
  def index
    redirect_to login_path
  end

  def welcome
  end

  def new
  end

  def create
    session[:name] = params[:name]
    if current_user
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end


  def destroy
    session.delete :name
    redirect_to root_path
  end

end
