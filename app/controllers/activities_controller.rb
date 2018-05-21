class ActivitiesController < ApplicationController
  before_action :get_activity, only: [ :show, :edit, :update, :destroy ]

  def new
    @activity = Activity.new
  end

  def create
    activity = Activity.create activity_params
    activity.save

    redirect_to activities_path
  end

  def index
    @activities = Activity.all
  end

  def show
  end

  def edit
  end

  def update
    activity.update activity_params
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
