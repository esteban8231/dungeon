# == Schema Information
#
# Table name: armors
#
#  id           :bigint           not null, primary key
#  armor_type   :integer
#  character_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  value        :integer
#  name         :string
#

require 'test_helper'

class ArmorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
