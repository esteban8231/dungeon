class AddIsCurrentToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :is_current, :boolean
  end
end
