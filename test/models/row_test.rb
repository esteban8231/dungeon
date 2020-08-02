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

require 'test_helper'

class RowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
