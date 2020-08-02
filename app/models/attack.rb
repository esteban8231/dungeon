# == Schema Information
#
# Table name: attacks
#
#  id           :bigint           not null, primary key
#  attack_bonus :string
#  damage_dice  :string
#  character_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  weapon       :string
#

class Attack < ApplicationRecord
  belongs_to :character
end
