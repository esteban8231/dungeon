class AddOrdinateAndAbscissaToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :ordinate, :integer
    add_column :characters, :abscissa, :integer
  end
end
