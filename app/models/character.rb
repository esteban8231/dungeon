class Character < ApplicationRecord
  has_many :attacks
  has_many :armors
  
  scope :owner_is, ->(owner){where('characters.owner = (?)', owner)}
  scope :in_map, -> {where(is_current: true)}

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
