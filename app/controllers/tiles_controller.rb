class TilesController < ApplicationController
  def update
    puts params
  end

  def edit_tile
    @tile = Tile.find(params[:id])
    @tile.update(tile_type: params[:tile_type])
    redirect_to edit_map_path(@tile.row.map)
  end

  private

  def tile_params
    params.require(:tile).permit(:tile_type, :icon)
  end
end