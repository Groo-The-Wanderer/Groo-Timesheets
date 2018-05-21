class TimesheetHistoriesController < ApplicationController
  before_action :get_timesheet_history, only: [ :show, :edit, :update, :destroy ]

  def new
    @timesheet_history = TimesheetHistory.new
  end

  def create
    timesheet_history = TimesheetHistory.create timesheet_history_params
    timesheet_history.save

    redirect_to timesheet_histories_path
  end

  def index
    @timesheet_histories = TimesheetHistory.all
  end

  def show
  end

  def edit
  end

  def update
    timesheet_history.update timesheet_history_params
    redirect_to timesheet_history_path params[:id]
  end

  def destroy
    @timesheet_history.destroy
    redirect_to timesheet_histories_path
  end

  private
  def timesheet_history_params
    params.require(:timesheet_history).permit(:start_date, :end_date)
  end

  def get_timesheet_history
    @timesheet_history = TimesheetHistory.find params[:id]
  end
end
