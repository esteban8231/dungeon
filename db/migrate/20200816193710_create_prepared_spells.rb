class CreatePreparedSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :prepared_spells do |t|
      t.references :known_spell, null: false, foreign_key: true

      t.timestamps
    end
  end
end
