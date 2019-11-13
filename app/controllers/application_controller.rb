class ApplicationController < ActionController::Base
  before_action :check_for_user
  before_action :read_user_and_character

  def check_for_user
    if cookies[:user].blank?
      redirect_to login_path
    end
  end

  def read_user_and_character
    @user = cookies[:user]
    if cookies[:character_id]
      @character = Character.find(cookies[:character_id])
    elsif Character.owner_is(@user).present?
      @character = Character.owner_is(@user).first
    else
      @character = Character.new
    end
  end
end
