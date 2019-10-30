class Map < ApplicationRecord
  has_many :rows

  def self.generate(height: 15, width: 15, map_type: 'castle', background_image_link: '')
    puts height
    puts width
    puts map_type
    puts background_image_link
    map = self.create(map_type: map_type, background_image_link: background_image_link)
    height.times do |ordinate|
      Row.generate(width: width, ordinate: ordinate, map_id: map.id)
    end
    return map
  end

  def self.current
    @map = Map.last
  end
end
