class CreateTiles < ActiveRecord::Migration[6.0]
  def change
    create_table :tiles do |t|
      t.string :tile_type
      t.integer :trap_state
      t.integer :secret_door_stage
      t.bigint :row_id
      t.string :icon

      t.timestamps
    end
  end
end
