class CreateRows < ActiveRecord::Migration[6.0]
  def change
    create_table :rows do |t|
      t.bigint :map_id

      t.timestamps
    end
  end
end
