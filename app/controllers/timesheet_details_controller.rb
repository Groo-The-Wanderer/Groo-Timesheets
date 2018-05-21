class TimesheetDetailsController < ApplicationController
  before_action :get_timesheet_detail, only: [ :show, :edit, :update, :destroy ]

  def new
    @timesheet_detail = TimesheetDetail.new
  end

  def create
    timesheet_detail = TimesheetDetail.create timesheet_detail_params
    timesheet_detail.save

    redirect_to timesheet_details_path
  end

  def index
    @timesheet_details = TimesheetDetail.all
  end

  def show
  end

  def edit
  end

  def update
    timesheet_detail.update timesheet_detail_params
    redirect_to timesheet_detail_path params[:id]
  end

  def destroy
    @timesheet_detail.destroy
    redirect_to timesheet_details_path
  end

  private
  def timesheet_detail_params
    params.require(:timesheet_detail).permit(:activity_id, :billable_flag, :day1_hours, :day2_hours, :day3_hours, :day4_hours, :day5_hours, :day6_hours, :day7_hours, :reviewed_flag)
  end

  def get_timesheet_detail
    @timesheet_detail = TimesheetDetail.find params[:id]
  end
end
