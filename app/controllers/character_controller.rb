class CharacterController < ApplicationController
  def show
    @character = Character.find(params[:id])
    @planet = @character.planet
    @species = @character.species
  end
end
