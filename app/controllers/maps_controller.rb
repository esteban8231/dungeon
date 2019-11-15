class MapsController < ApplicationController  
  before_action :check_for_master, except: [:current]

  def current
    @map = Map.current
    @characters = Character.owner_is(cookies[:user])
    @character = Character.find_by(id: cookies[:character_id]) || @characters.first
    @map_characters = Character.in_map
  end

  def new
    @map = Map.new
    #Simplemente preguntará por el tipo de mapa y el tamaño y por defecto se creará con simples
    #Existirá el edit del mapa y el update de los tiles.
  end

  def create
    @map = Map.generate(map_params)
    if @map.save
      redirect_to edit_map_path(@map)
    else
      redirect_to root_path
    end
  end

  def edit
    @map = Map.find(params[:id])    
  end

  #No hay update sino que lo que se updatea son los tiles

  def index
    @maps = Map.all
  end

  private

    def check_for_master
      unless cookies[:user] == "master"
        redirect_to root_path
      end
    end

    def map_params
      params.require(:map).permit(:height, :width, :map_type, :background_image_link)
    end
end
