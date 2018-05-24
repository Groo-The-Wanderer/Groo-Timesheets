class SessionController < ApplicationController
  def new
  end

  def create
    user = Employee.find_by email: params[:email]
    if user.present? && user.authenticate( params[:password] ) # will evaluate TRUE if email exists in user table
      # correct credentials
      # create a cookie which stores the Rails session, including the user ID
      session[:user_id] = user.id
      redirect_to root_path
    else
      # bad credentials, i.e. unsuccessful login
      flash[:error] = "Invalid email address or password"
      redirect_to login_path
    end    
  end

  def destroy
    session[:user_id] = nil # this clears the cookie
    redirect_to login_path
  end
end
