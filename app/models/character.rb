class Character < ApplicationRecord
  belongs_to :planet
  belongs_to :species
  has_many :filmcharacters
  has_many :films, through: :filmcharacters
  has_many :characterstarships
  has_many :starships, through: :characterstarships
  has_many :charactervehicles
  has_many :vehicles, through: :charactervehicles

end
