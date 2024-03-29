class ApplicationController < ActionController::Base
  protect_from_forgery

  # This will return the current user, if they exist
  # Replace with code that works with your application
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by_id(session[:user_id])
    end
  end
  helper_method :current_user

  # Returns true if current_user exists, false otherwise
  def logged_in?
    !current_user.nil?
  end
  helper_method :logged_in?
end
