class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [ :destroy ]
  before_action :redirect_if_logged_in, only: [:new]

  def new
  end

  def create
    user = login(params[:email], params[:password])
    if user
      redirect_to root_path, notice: "ログインに成功しました"
    else
      flash.now[:alert] = "メールアドレスまたはパスワードが無効・もしくは間違っています"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, status: :see_other, notice: "ログアウトしました"
  end

  private

  def redirect_if_logged_in
    if logged_in?
      redirect_to root_path, notice: "既にログインしています"
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
