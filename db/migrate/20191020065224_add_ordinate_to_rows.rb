class AddOrdinateToRows < ActiveRecord::Migration[6.0]
  def change
    add_column :rows, :ordinate, :integer
  end
end
