class ActivitiesController < ApplicationController
  before_action :check_if_admin
  before_action :get_activity, only: [ :show, :edit, :update, :destroy ]

  add_breadcrumb "Home", :root_path
  add_breadcrumb "All Activities for Project", :activities_path

  def new
    add_breadcrumb "Add a New Activity", :new_activity_path

    @activity = Activity.new
  end

  def create
    activity = Activity.create activity_params
    activity.save

    redirect_to activities_path
  end

  def index
    @projects = Project.all
    @activities = Activity.all.joins(:project).order(:project_id, :start_date)
  end

  def show
    add_breadcrumb "Activity Details for #{ @activity.name }", :activity_path

    @start_date = @activity.start_date.present? ? @activity.start_date.strftime("%d/%m/%Y") : nil
    @end_date = @activity.end_date.present? ? @activity.end_date.strftime("%d/%m/%Y") : nil

  end

  def edit
    add_breadcrumb "Edit Activity [#{ @activity.name }]", :edit_activity_path
  end

  def update
    @activity.update activity_params
    redirect_to activity_path params[:id]
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
  end

  private
  def activity_params
    params.require(:activity).permit(:name, :project_id, :start_date, :end_date, :billable_flag)
  end

  def get_activity
    @activity = Activity.find params[:id]
  end
end
