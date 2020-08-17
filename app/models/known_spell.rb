# == Schema Information
#
# Table name: known_spells
#
#  id               :bigint           not null, primary key
#  level            :integer
#  verbal           :boolean
#  somatic          :boolean
#  material         :string
#  focus            :boolean
#  divine_focus     :boolean
#  xp               :integer
#  casting_time     :string
#  range            :string
#  duration         :string
#  saving_throw     :string
#  spell_resistance :boolean
#  description      :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  character_id     :bigint           not null
#  name             :string
#
class KnownSpell < ApplicationRecord
  belongs_to :character
  has_many :prepared_spells

  def components
    arr = []
    arr << "V" if verbal
    arr << "S" if somatic
    arr << "M" if material
    arr << "F" if focus
    arr << "DF" if divine_focus
    arr << xp.to_s if xp && xp > 0
    arr.join(" ")
  end
end
