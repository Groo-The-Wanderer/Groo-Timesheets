class WeeksController < ApplicationController
  before_action :get_week, only: [ :show, :edit, :update, :destroy ]

  def new
    @week = Week.new
  end

  def create
    week = Week.create week_params
    week.save

    redirect_to weeks_path
  end

  def index
    @weeks = Week.all
  end

  def show
  end

  def edit
  end

  def update
    week.update week_params
    redirect_to week_path params[:id]
  end

  def destroy
    @week.destroy
    redirect_to weeks_path
  end

  private
  def week_params
    params.require(:week).permit(:start_date)
  end

  def get_week
    @week = Week.find params[:id]
  end
end
