class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:error] = "#{ActionController::Base.helpers.link_to "Join now", signup_path} or #{ActionController::Base.helpers.link_to "log in", login_path} to do that :-) ".html_safe
      redirect_to :back
    end
  end
end
