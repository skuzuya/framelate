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

  def show
    @template = Template.find(params[:id])
  end

  def edit
    @template = Template.find(params[:id])
  end

  def update
    @template = Template.find(params[:id])
    if @template.update(template_params)
      redirect_to template_path(@template)
    else
      render :edit
    end
  end

  def destroy
    @template = Template.find(params[:id])
    @template.destroy
    redirect_to root_path
  end

  private

  def template_params
    params.require(:template).permit(:title, :description, :body)
  end
end
