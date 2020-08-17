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

class Character < ApplicationRecord
  has_many :attacks
  has_many :armors
  has_many :known_spells
  has_many :prepared_spells, through: :known_spells
  
  scope :owner_is, ->(owner){where('characters.owner = (?)', owner)}
  scope :in_map, -> {where(is_current: true)}

  def self.broadcast_positions
    positions = Character.in_map.map do |ch|
      {abscissa: ch.abscissa, ordinate: ch.ordinate, icon: ch.icon}
    end
    BoardChannel.broadcast_to("board_channel", positions)
  end

  def calculate_ac
    armors.sum(:value)
  end

  def make_visible
    self.update(is_current: true, ordinate: 0, abscissa: 0)    
  end

  def kill
    self.update(is_current: false, ordinate: 0, abscissa: 0)    
  end
end
