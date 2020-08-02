# == Schema Information
#
# Table name: maps
#
#  id                    :bigint           not null, primary key
#  map_type              :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  background_image_link :string
#  is_current            :boolean
#  name                  :string
#

require 'test_helper'

class MapTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
