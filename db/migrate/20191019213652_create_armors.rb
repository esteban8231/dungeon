class CreateArmors < ActiveRecord::Migration[6.0]
  def change
    create_table :armors do |t|
      t.integer :armor_type
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
