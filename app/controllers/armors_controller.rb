class ArmorsController < ApplicationController
  def create
    @armor = Armor.new(armor_params)
    @character = @armor.character
    if @armor.save
      redirect_to @character
    else
      render @character
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
    params.require(:armor).permit(:value, :armor_type, :character_id)
  end
end