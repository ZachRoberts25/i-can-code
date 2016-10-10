class PlanetController < ApplicationController
  def show
    @planet = Planet.find(params[:id])
  end
end
