class BasicPagesController < ApplicationController
  skip_before_action :check_for_user

  def login
  end

  def register
    cookies.permanent[:user] = params[:user]
    redirect_to root_path
  end
end
