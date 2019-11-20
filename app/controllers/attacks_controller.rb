class AttacksController < ApplicationController
  def create
    @attack = Attack.new(attack_params)
    @character = @attack.character
    if @attack.save
      redirect_to edit_character_path(@character)
    else
      render edit_character_path(@character)
    end
  end

  def delete
    @attack = Attack.find(params[:id])
    @character = @attack.character
    @attack.destroy!
    redirect_to @character
  end

  private

  def attack_params
    {
      attack_bonus: params[:attack_bonus],
      damage_dice: params[:damage_dice],
      character_id: params[:character_id],
      weapon: params[:weapon]}
  end
end