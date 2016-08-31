class Starship < ApplicationRecord
  has_many :characterstarships
  has_many :characters, through: :characterstarships
end
