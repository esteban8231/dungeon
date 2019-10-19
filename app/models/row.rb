class Row < ApplicationRecord
  has_many :tiles
  belongs_to :map
end
