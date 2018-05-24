class TimesheetsController < ApplicationController
  before_action :get_timesheet, only: [ :show, :edit, :update, :destroy ]

  add_breadcrumb "Home", :root_path

  def new
    @timesheet = Timesheet.new
  end

  def create
    timesheet = Timesheet.create timesheet_params
    timesheet.save

    redirect_to timesheets_path
  end

  def index
    add_breadcrumb "Open Timesheet", :timesheets_path
    @timesheets = Timesheet.all
  end

  def open # Edit if it exists or create if not
    employee = params[:employee_id]
    week = params[:week_id]

    @timesheet = Timesheet.find_or_initialize_by(employee_id: employee, week_id: week);
    @timesheet.save

    redirect_to edit_timesheet_path @timesheet
  end

  def show
  end

  def edit
    add_breadcrumb "Open Timesheet", :timesheets_path
    add_breadcrumb "#{ @timesheet.employee.name } Timesheet for week #{ @timesheet.week.name }", :edit_timesheet_path
  end

  def update
    @timesheet.update timesheet_params
    redirect_to timesheets_path
  end

  def destroy
    @timesheet.destroy
    redirect_to timesheets_path
  end

  private
  def timesheet_params
    params.require(:timesheet).permit(:employee_id, :week_id, timesheet_details_attributes: [ :id, :activity_id, :billable_flag, :day1_hours, :day2_hours, :day3_hours, :day4_hours, :day5_hours, :day6_hours, :day7_hours, :total_hours, :_destroy ])
  end

  def get_timesheet
    @timesheet = Timesheet.find params[:id]
  end
end
