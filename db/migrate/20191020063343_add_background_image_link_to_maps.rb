class AddBackgroundImageLinkToMaps < ActiveRecord::Migration[6.0]
  def change
    add_column :maps, :background_image_link, :string
  end
end
