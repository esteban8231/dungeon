class AddWeaponToAttacks < ActiveRecord::Migration[6.0]
  def change
    add_column :attacks, :weapon, :string
  end
end
