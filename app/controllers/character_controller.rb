class CharacterController < ApplicationController
  def show
    @character = Character.find(params[:id])
  end
end
