class SessionsController < ApplicationController
  def new
  end

  def create
    user =  User.find_by(username: params[:username].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back!"
      redirect_to user_path(user)
    else
      redirect_to login_path
      flash[:error] = "Sorry, try again."
    end

  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Peace out!"
    redirect_to root_path
  end
end
