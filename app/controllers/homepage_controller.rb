class HomepageController < ApplicationController
  def home
    if params["results"]
    @results = Character.where("LOWER(name) LIKE LOWER('%#{params["results"]}%')")
    end
  end
end
