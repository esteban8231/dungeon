class Character < ApplicationRecord
  has_many :attacks
  has_many :armor
  
  scope :owner_is, ->(owner){where('characters.owner = (?)', owner)}

  def calculate_ac
  end
end
