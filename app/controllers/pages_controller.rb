class PagesController < ApplicationController
  before_action :check_if_logged_in

  def home
    add_breadcrumb "Home", :root_path
  end
end
