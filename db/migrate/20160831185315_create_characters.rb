class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :birth_year
      t.string :eye_color
      t.string :gender
      t.string :hair_color
      t.string :height
      t.string :mass
      t.string :skin_color
      t.string :url

      t.timestamps
    end
  end
end
