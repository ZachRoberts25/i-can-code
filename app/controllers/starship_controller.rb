class StarshipController < ApplicationController
  def show
    @starship = Starship.find(params[:id])
    @array = Starship.column_names
    @array.delete("name")
    @array.delete("url")
    @array.delete("created_at")
    @array.delete("updated_at")
    @array.delete("id")
  end
end
