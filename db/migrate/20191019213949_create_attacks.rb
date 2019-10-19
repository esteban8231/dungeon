class CreateAttacks < ActiveRecord::Migration[6.0]
  def change
    create_table :attacks do |t|
      t.string :attack_bonus
      t.string :damage_dice
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
