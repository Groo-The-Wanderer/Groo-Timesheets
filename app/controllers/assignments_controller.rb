class AssignmentsController < ApplicationController
  before_action :get_assignment, only: [ :show, :edit, :update, :destroy ]

  def new
    @assignment = Assignment.new
  end

  def create
    assignment = Assignment.create assignment_params
    assignment.save

    redirect_to assignments_path
  end

  def index
    @assignments = Assignment.all
  end

  def show
  end

  def edit
  end

  def update
    assignment.update assignment_params
    redirect_to assignment_path params[:id]
  end

  def destroy
    @assignment.destroy
    redirect_to assignments_path
  end

  private
  def assignment_params
    params.require(:assignment).permit(:employee_id, :project_id, :start_date, :end_date)
  end

  def get_assignment
    @assignment = Assignment.find params[:id]
  end
end
