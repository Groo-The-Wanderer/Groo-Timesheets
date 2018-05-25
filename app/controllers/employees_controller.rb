class EmployeesController < ApplicationController
  before_action :check_if_admin
  before_action :get_employee, only: [ :show, :edit, :update, :destroy ]

  add_breadcrumb "Home", :root_path
  add_breadcrumb "All Employees", :employees_path

  def new
    add_breadcrumb "Add a New Employee", :new_employee_path

    @employee = Employee.new
  end

  def create
    employee = Employee.create employee_params
    employee.name = employee.first_name + " " + employee.last_name
    employee.save

    redirect_to employees_path
  end

  def index
    @employees = Employee.all
  end

  def show
    add_breadcrumb "Employee Details for #{ @employee.name }", :employee_path

    @start_date = @employee.start_date.present? ? @employee.start_date.strftime("%d/%m/%Y") : nil
    @end_date = @employee.end_date.present? ? @employee.end_date.strftime("%d/%m/%Y") : nil
  end

  def edit
    add_breadcrumb "Edit Employee #{ @employee.name }", :edit_employee_path

  end

  def update
    @employee.update employee_params
    @employee.name = @employee.first_name + " " + @employee.last_name
    @employee.save
    
    redirect_to employee_path params[:id]
  end

  def destroy
    @employee.destroy
    redirect_to employees_path
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :start_date, :end_date, :password, :admin_flag)
  end

  def get_employee
    @employee = Employee.find params[:id]
  end
end
