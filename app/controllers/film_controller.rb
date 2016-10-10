class FilmController < ApplicationController
  def show
    @film = Film.find(params[:id])
  end
  def opening
    @film = Film.find(params[:id])
  end

end
