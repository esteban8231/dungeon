# == Schema Information
#
# Table name: characters
#
#  id           :bigint           not null, primary key
#  owner        :string
#  hp_max       :integer
#  hp_temp      :integer
#  current_hp   :integer
#  strength     :integer
#  dexterity    :integer
#  constitution :integer
#  wisdom       :integer
#  inteligence  :integer
#  charisma     :integer
#  name         :string
#  icon         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  is_current   :boolean
#  ordinate     :integer
#  abscissa     :integer
#

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
