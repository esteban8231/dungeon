class AddNameToArmor < ActiveRecord::Migration[6.0]
  def change
    add_column :armors, :name, :string
  end
end
