class CreateKnownSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :known_spells do |t|
      t.integer :level
      t.boolean :verbal
      t.boolean :somatic
      t.string :material
      t.boolean :focus
      t.boolean :divine_focus
      t.integer :xp
      t.string :casting_time
      t.string :range
      t.string :duration
      t.string :saving_throw
      t.boolean :spell_resistance
      t.string :description

      t.timestamps
    end
  end
end
