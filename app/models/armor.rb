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

class Armor < ApplicationRecord
  belongs_to :character


end
