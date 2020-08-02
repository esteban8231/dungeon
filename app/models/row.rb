# == Schema Information
#
# Table name: rows
#
#  id         :bigint           not null, primary key
#  map_id     :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ordinate   :integer
#

class Row < ApplicationRecord
  has_many :tiles
  belongs_to :map, optional: true

  def self.generate(width: 0, ordinate: 0, map_id: nil)    
    row = self.create!(ordinate: ordinate, map_id: map_id)
    width.times do |abscissa|
      row.tiles.create!(tile_type: 'simple', trap_state: 0, secret_door_stage: 0, ordinate: ordinate, abscissa: abscissa)
    end
  end
end
