class CreateCharactervehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :charactervehicles do |t|
      t.belongs_to :character, foreign_key: true
      t.belongs_to :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
