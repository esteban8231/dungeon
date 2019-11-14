class Character < ApplicationRecord
  has_many :attacks
  has_many :armors
  
  scope :owner_is, ->(owner){where('characters.owner = (?)', owner)}
  scope :in_map, -> {where(is_current: true)}

  def calculate_ac
    armors.sum(:value)
  end
end
