class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :current_admin?

  def current_user
  @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize!
    render file: "/public/404" unless current_user && current_admin?
  end

  def current_admin?

    current_user && current_user.role == 1
    #   true
    # else
    #   false
    # end
  end

  # def current_admin?
  #   current_user && current_user.admin?
  # end

end
