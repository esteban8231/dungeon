class Character < ApplicationRecord
  has_many :attacks
  has_many :armor
  
  scope :owner_is, ->(owner){where('characters.owner = (?)', owner)}
  scope :in_map, -> {where(is_current: true)}

  def calculate_ac
  end
end
