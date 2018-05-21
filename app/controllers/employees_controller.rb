class EmployeesController < ApplicationController
  before_action :get_employee, only: [ :show, :edit, :update, :destroy ]

  def new
    @employee = Employee.new
  end

  def create
    employee = Employee.create employee_params
    employee.save

    redirect_to employees_path
  end

  def index
    @employees = Employee.all
  end

  def show
    @projects = @employee.projects.all
  end

  def edit
  end

  def update
    @employee.update employee_params
    redirect_to employee_path params[:id]
  end

  def destroy
    @employee.destroy
    redirect_to employees_path
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :start_date, :end_date)
  end

  def get_employee
    @employee = Employee.find params[:id]
  end
end
