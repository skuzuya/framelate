class TemplatesController < ApplicationController
  before_action :set_template, only: [ :show, :edit, :update, :destroy ]
  before_action :authorize_user, only: [ :edit, :update, :destroy ]

  def index
    @templates = Template.all
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

  def show
  end

  def edit
  end

  def update
    if @template.update(template_params)
      redirect_to template_path(@template)
    else
      render :edit
    end
  end

  def destroy
    @template.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def template_params
    params.require(:template).permit(:title, :description, :body)
  end

  def set_template
    @template = Template.find_by(id: params[:id])
    unless @template
      flash[:alert] = "Template not found."
      redirect_to templates_path
    end
  end

  def authorize_user
    unless @template.user == current_user
      flash[:alert] = "You are not authorized to edit this template."
      redirect_to root_path
    end
  end
end
