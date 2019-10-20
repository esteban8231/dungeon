class ApplicationController < ActionController::Base
  before_action :check_for_user

  def check_for_user
    if cookies[:user].blank?
      redirect_to login_path
    end
  end
end
