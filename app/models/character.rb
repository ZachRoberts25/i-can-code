class Character < ApplicationRecord
  belongs_to :planet
  belongs_to :species
end
