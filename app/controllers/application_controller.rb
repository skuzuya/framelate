class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :require_login

  private

  def not_authenticated
    redirect_to login_path, alert: "ログインが必要です"
  end

  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  # end
end
