class Vehicle < ApplicationRecord
  has_many :charactervehicles
  has_many :characters, through: :charactervehicles
end
