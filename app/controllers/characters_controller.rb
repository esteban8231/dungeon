class CharactersController < ApplicationController
  before_action :check_for_master, only: [:delete, :update]

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to edit_character_path(@character)
    else
      render 'new'
    end
  end

  #Acá se adicionan ataques y pendejadas
  def edit
    @character = Character.owner_is(cookies[:user]).find(params[:id])
    @attack = @character.attacks.build
    @armor = @character.armors.build
    @spell = @character.known_spells.build
  end

  def update
    puts params
    #Acá el master elige quién es visible
  end

  def index        
    unless cookies[:user] == "Mmaster"
      @characters = Character.owner_is(cookies[:user])    
    else
      @characters = Character.all    
    end
  end

  def show
    if cookies[:user] == "Mmaster"
      @character = Character.find(params[:id])    
    else
      @character = Character.owner_is(cookies[:user]).find(params[:id])    
    end
  end

  def delete

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
