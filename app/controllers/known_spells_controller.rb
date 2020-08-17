class KnownSpellsController < ApplicationController
  def create
    @spell = KnownSpell.new(level: params[:level],
                            name: params[:name],
                            verbal: params[:verbal],
                            somatic: params[:somatic],
                            material: params[:material],
                            focus: params[:focus],
                            divine_focus: params[:divine_focus],
                            xp: params[:xp] || 0,
                            casting_time: params[:casting_time],
                            range: params[:range],
                            duration: params[:duration],
                            saving_throw: params[:saving_throw],
                            description: params[:description],
                            spell_resistance: params[:spell_resistance],
                            character_id: params[:character_id])      
    @character = @spell.character
    if @spell.save
      redirect_to edit_character_path(@character)
    else
      render edit_character_path(@character)
    end
  end

  def delete
    @spell = KnownSpell.find(params[:id])
    @character = @spell.character
    @spell.destroy!
    redirect_to @character
  end

end