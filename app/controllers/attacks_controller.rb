class AttacksController < ApplicationController
  def create
    @attack = Attack.new(attack_params)
    @character = @attack.character
    if @attack.save
      redirect_to @character
    else
      render @character
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
    params.require(:attack).permit(:attack_bonus, :damage_dice, :character_id, :weapon)
  end
end