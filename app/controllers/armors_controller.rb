class ArmorsController < ApplicationController
  def create
    @armor = Armor.new(value: params[:value].first, name: params[:name], character_id: params[:character_id])
    @character = @armor.character
    if @armor.save
      redirect_to edit_character_path(@character)
    else
      render edit_character_path(@character)
    end
  end

  def delete
    @armor = Armor.find(params[:id])
    @character = @armor.character
    @armor.destroy!
    redirect_to @character
  end

  private

  def armor_params
    params.permit(:value, :armor_type, :character_id)    
  end
end