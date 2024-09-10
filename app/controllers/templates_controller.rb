class TemplatesController < ApplicationController
  def index
  end

  def new
    @template = Template.new
  end

  def create
    @template = current_user.templates.build(template_params)
    if @template.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def template_params
    params.require(:template).permit(:title, :body)
  end
end
