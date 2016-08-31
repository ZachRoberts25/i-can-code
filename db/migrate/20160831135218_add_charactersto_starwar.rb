class AddCharacterstoStarwar < ActiveRecord::Migration[5.0]
  def change
    drop_table :starwars
  end
end
