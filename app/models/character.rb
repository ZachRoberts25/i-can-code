class Character < ApplicationRecord
  belongs_to :planet
  belongs_to :species
  has_many :filmcharacters
  has_many :films, through: :filmcharacters
end
