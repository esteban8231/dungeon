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

require 'test_helper'

class TileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
