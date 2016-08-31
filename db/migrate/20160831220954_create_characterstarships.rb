class CreateCharacterstarships < ActiveRecord::Migration[5.0]
  def change
    create_table :characterstarships do |t|
      t.belongs_to :character, index: true
      t.belongs_to :starship, index: true
      t.timestamps
      t.timestamps
    end
  end
end
