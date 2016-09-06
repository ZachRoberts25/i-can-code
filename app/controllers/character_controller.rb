class CharacterController < ApplicationController
  def show
    @character = Character.find(params[:id])
    @planet = Planet.find_by(url: @character.homeworld)
    
  end
end
