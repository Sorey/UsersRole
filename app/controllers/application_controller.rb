class ApplicationController < ActionController::Base
  before_action :authorize
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # def require_editor
  #   redirect_to '/' unless current_user.editor?
  # end

  def require_editor
    redirect_to '/' unless current_user.editor?  # || current_user.admin?
  end

  def require_admin
    redirect_to '/' unless current_user.admin?
  end

  protected

    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end
end
