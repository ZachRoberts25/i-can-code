class SpeciesController < ApplicationController
  def show
    @species = Species.find(params[:id])
    if @species.homeworld != "n/a"
    @planet = Planet.find_by(url: @species.homeworld)
    end
  end
end
