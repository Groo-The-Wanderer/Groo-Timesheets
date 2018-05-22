class ProjectsController < ApplicationController
  before_action :get_project, only: [ :show, :edit, :update, :destroy ]

  add_breadcrumb "All Projects", :projects_path

  def new
    add_breadcrumb "Add a New Project", :new_project_path

    @project = Project.new
  end

  def create
    project = Project.create project_params
    project.save

    redirect_to projects_path
  end

  def index
    @projects = Project.all
  end

  def show
    add_breadcrumb "Project Details for #{ @project.name }", :project_path

    @activities = @project.activities.all
  end

  def edit
    add_breadcrumb "Edit Project [#{ @project.name }]", :edit_project_path
  end

  def update
    @project.update project_params
    redirect_to project_path params[:id]
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :client_id, :start_date, :end_date, :billable_flag, :parent_project_id)
  end

  def get_project
    @project = Project.find params[:id]
  end
end
