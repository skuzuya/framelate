class TopController < ApplicationController
  skip_before_action :require_login

  def index
    # ルートパスのアクション
  end

  # private

  # def require_login
  #   unless current_user
  #     redirect_to login_path
  #   end
  # end
end
