class PreparedSpellsController < ApplicationController
  def create
    @spell = PreparedSpell.new(known_spell_id: params[:known_spell_id])
    @character = @spell.known_spell.character
    if @spell.save
      redirect_to edit_character_path(@character)
    else
      render edit_character_path(@character)
    end
  end

  def destroy
    @spell = PreparedSpell.find(params[:id])
    @character = @spell.known_spell.character
    @spell.destroy!
    redirect_to root_path
  end

end