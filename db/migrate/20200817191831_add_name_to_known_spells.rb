class AddNameToKnownSpells < ActiveRecord::Migration[6.0]
  def change
    add_column :known_spells, :name, :string
  end
end
