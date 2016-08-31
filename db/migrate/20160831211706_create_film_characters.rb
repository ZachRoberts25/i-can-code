class CreateFilmCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :filmcharacters do |t|
      t.belongs_to :film, index: true
      t.belongs_to :character, index: true
      t.timestamps
    end
  end
end
