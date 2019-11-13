class MovementsController < ApplicationController
  def create
    @map_characters = Character.in_map
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end
end
