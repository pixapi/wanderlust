class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  # helper_method :current_admin?
  # helper_method :require_user
  #
  # def require_user
  #   redirect_to 404_path unless current_user
  # end

  # def current_admin?
  #   current_user && current_user.admin?
  # end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
