class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :model
      t.string :vehicle_class
      t.string :manufacturer
      t.string :length
      t.string :cost_in_credits
      t.string :crew
      t.string :passengers
      t.string :max_atmsophering_speed
      t.string :cargo_capacity
      t.string :consumables
      t.string :url

      t.timestamps
    end
  end
end
