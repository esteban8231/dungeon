class AddValueToArmor < ActiveRecord::Migration[6.0]
  def change
    add_column :armors, :value, :integer
  end
end
