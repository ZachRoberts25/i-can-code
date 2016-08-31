class AddPlanetReftoCharacter < ActiveRecord::Migration[5.0]
  def change
    add_reference :characters, :planet, foreign_key: true
  end
end
