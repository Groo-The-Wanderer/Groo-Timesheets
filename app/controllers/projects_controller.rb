class ProjectsController < ApplicationController
  before_action :get_project, only: [ :show, :edit, :update, :destroy ]

  def new
  end

  def create
  end

  def index
    @projects = Project.all
  end

  def show
    @activities = @project.activities.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def get_project
    @project = Project.find params[:id]
  end
end
