class Film < ApplicationRecord
  has_many :filmcharacters
  has_many :characters, through: :filmcharacters
end
