class DropStarWarsCharacterTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :starwars_characters
  end
end
