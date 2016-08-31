class AddSpeciesreftoCharacter < ActiveRecord::Migration[5.0]
  def change
    add_reference :characters, :species, foreign_key: true
  end
end
