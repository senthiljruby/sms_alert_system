class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :authenticate, :logo_title, :signature
  

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def authenticate
    unless logged_in?
      flash.now[:notice] = "Login required"
      redirect_to log_in_path
    end
  end

  def logo_title
    Settings.first.logo_title
  end

  def signature
    Settings.first.signature
  end
end
