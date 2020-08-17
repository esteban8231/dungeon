class AddCharacterToKnownSpell < ActiveRecord::Migration[6.0]
  def change
    add_reference :known_spells, :character, null: false, foreign_key: true
  end
end
