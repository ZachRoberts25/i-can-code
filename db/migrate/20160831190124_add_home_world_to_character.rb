class AddHomeWorldToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :homeworld, :string
  end
end
