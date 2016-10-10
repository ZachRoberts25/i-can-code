class VehicleController < ApplicationController
  def show
    @vehicle = Vehicle.find(params[:id])
    @array = Vehicle.column_names
    @array.delete("name")
    @array.delete("url")
    @array.delete("created_at")
    @array.delete("updated_at")
    @array.delete("id")
  end
end
