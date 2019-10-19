class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :owner
      t.integer :hp_max
      t.integer :hp_temp
      t.integer :current_hp
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :wisdom
      t.integer :inteligence
      t.integer :charisma
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
