class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def create
    Rails.logger.debug "Login attempt for email: #{params[:email]}"
    user = User.authenticate(params[:email], params[:password])
    if user
      Rails.logger.debug "Login successful for user: #{user.id}"
      session[:user_id] = user.id
      redirect_to user, notice: 'ログインに成功しました。'
    else
      Rails.logger.debug "Login failed for email: #{params[:email]}"
      flash.now[:alert] = 'メールアドレスまたはパスワードが間違っています。'
      render :new
    end
  end

  def new; end

  def destroy
    logout
    redirect_to root_path, status: :see_other, notice: 'ログアウトしました。'
  end
end