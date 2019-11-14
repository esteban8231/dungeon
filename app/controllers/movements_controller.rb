class MovementsController < ApplicationController
  def create
    @character = Character.find_by(id: cookies[:character_id])
    @character.update(movements_params)
    @map_characters = Character.in_map
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {
        render 'create'
      }
    end
  end

  private
    def movements_params
      {abscissa: params[:abscissa] , ordinate: params[:ordinate]}
    end
end
