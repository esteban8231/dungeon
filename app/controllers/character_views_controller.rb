class CharacterViewsController < ApplicationController
  def create
    #Este es el que cambia el cookie y hace toda la vaina.
    cookies[:character_id] = params[:character_id]
    @character = Character.find(params[:character_id])
    respond_to do |format|
      format.js {render 'create'}
    end
  end
end