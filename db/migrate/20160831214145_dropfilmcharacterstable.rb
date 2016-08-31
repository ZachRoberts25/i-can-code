class Dropfilmcharacterstable < ActiveRecord::Migration[5.0]
  def change
    drop_table :film_characters
  end
end
