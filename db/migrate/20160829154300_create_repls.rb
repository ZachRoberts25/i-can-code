class CreateRepls < ActiveRecord::Migration[5.0]
  def change
    create_table :repls do |t|

      t.timestamps
    end
  end
end
