class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    Rails.logger.debug "User params: #{user_params.inspect}"
    if @user.save
      redirect_to root_path, notice: "User was successfully created."
    else
      Rails.logger.debug "User errors: #{@user.errors.full_messages}"
      render :new
    end
  end

  def show
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
