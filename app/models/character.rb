class Character < ApplicationRecord
  has_many :attacks
  has_many :armor
  
  def calculate_ac
  end
end
