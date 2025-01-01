class BookmarksController < ApplicationController
  before_action :require_login

  def create
    @template = Template.find(params[:template_id])
    current_user.bookmarked_templates << @template
    redirect_to @template
  end

  def destroy
    @template = Template.find(params[:template_id])
    current_user.bookmarked_templates.delete(@template)
    redirect_to @template
  end
end
