# == Schema Information
#
# Table name: prepared_spells
#
#  id             :bigint           not null, primary key
#  known_spell_id :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class PreparedSpell < ApplicationRecord
  belongs_to :known_spell
end
