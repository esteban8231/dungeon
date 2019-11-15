class CharactersController < ApplicationController

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save?
      redirect_to root_path
    else
      render 'new'
    end
  end

  #Acá se adicionan ataques y pendejadas
  def edit
    @character.owner_is(cookies[:user]).find(params[:id])
  end

  def update
    
  end

  def index    
    @characters = Character.owner_is(cookies[:user])
  end

  def show
    @character.owner_is(cookies[:user]).find(params[:id])
    
  end

  private

  def character_params
    params.require(:character).permit(
      :hp_max,
      :strength,
      :dexterity,
      :constitution,
      :wisdom,
      :inteligence,
      :charisma,
      :name,
      :icon
      ).merge(owner: cookies[:user])
  end
end
