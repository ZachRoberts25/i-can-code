class CreateStarwars < ActiveRecord::Migration[5.0]
  def change
    create_table :starwars do |t|

      t.timestamps
    end
  end
end
