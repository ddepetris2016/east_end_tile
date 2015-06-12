class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    @project.project_type = params[:project_type]
    @project.material = params[:material]
    @project.design = params[:design]
    @project.description = params[:description]
    @project.square_feet = params[:square_feet]
    @project.home_type = params[:home_type]
    @project.image = params[:image]
    @project.user_id = current_user.id

    if @project.save
      redirect_to "/projects", :notice => "Project created successfully."
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    @project.project_type = params[:project_type]
    @project.material = params[:material]
    @project.design = params[:design]
    @project.description = params[:description]
    @project.square_feet = params[:square_feet]
    @project.home_type = params[:home_type]
    @project.image = params[:image]
    @project.user_id = current_user.id

    if @project.save
      redirect_to "/projects", :notice => "Project updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy

    redirect_to "/projects", :notice => "Project deleted."
  end
end
