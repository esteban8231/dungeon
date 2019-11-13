class CharactersController < ApplicationController
  def new
    
  end

  def create
    
  end

  def edit
    
  end

  def update
    
  end

  def preview
    respond_to do |format|
      format.js {
        cookies.permanent[:character_id] = params[:id]

      }
    end
  end

  def move
    respond_to do |format|
      format.js {puts "asdf" * 30}
    end
  end
end
