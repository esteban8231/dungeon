class MapVisibilitiesController < ApplicationController  
  before_action :check_for_master

  def create
    @map = Map.find(params[:id]) 
    @map.update(is_current: true)
    redirect_to maps_path
  end

  def destroy
    @map = Map.find(params[:id]) 
    @map.update(is_current: false)
    redirect_to maps_path
  end

  private

    def check_for_master
      unless cookies[:user] == "Mmaster"
        redirect_to root_path
      end
    end
end
