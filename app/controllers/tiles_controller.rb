class TilesController < ApplicationController
  def update
    puts params
  end

  private

  def tile_params
    params.require(:tile).permit(:tile_type, :icon)
  end
end