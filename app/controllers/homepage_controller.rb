class HomepageController < ApplicationController
  def home
    @results = []
    if params["results"]
    @results = Character.where("LOWER(name) LIKE LOWER('%#{params["results"]}%')")
    p @results
    end
  end
end
