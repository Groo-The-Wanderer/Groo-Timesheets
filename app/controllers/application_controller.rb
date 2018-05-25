class ApplicationController < ActionController::Base
  before_action :fetch_user

  def check_if_logged_in
    unless @current_user.present?
      flash[:error] = "You must be logged in to view this page."
      redirect_to login_path
    end
  end

  def check_if_admin
    check_if_logged_in
    unless @is_admin
      flash[:error] = "You must be an admin user to view this page."
      redirect_to root_path
    end
  end

  private
  def fetch_user
    if session[:user_id].present?
      @current_user = Employee.find_by id: session[:user_id]
      @is_admin = @current_user.admin_flag
    end

    # Just in case we're dealing with a stale user ID
    # (i.e. an ID which no longer exists in the database)
    # we should delete the bad session
    session[:user_id] = nil unless @current_user.present?
  end
end

