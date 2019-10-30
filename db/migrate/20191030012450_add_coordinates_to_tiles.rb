class AddCoordinatesToTiles < ActiveRecord::Migration[6.0]
  def change
    add_column :tiles, :ordinate, :integer
    add_column :tiles, :abscissa, :integer
  end
end
