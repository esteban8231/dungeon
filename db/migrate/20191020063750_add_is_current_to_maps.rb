class AddIsCurrentToMaps < ActiveRecord::Migration[6.0]
  def change
    add_column :maps, :is_current, :boolean
  end
end
