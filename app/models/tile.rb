# == Schema Information
#
# Table name: tiles
#
#  id                :bigint           not null, primary key
#  tile_type         :string
#  trap_state        :integer
#  secret_door_stage :integer
#  row_id            :bigint
#  icon              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  ordinate          :integer
#  abscissa          :integer
#

class Tile < ApplicationRecord
  belongs_to :row
end
