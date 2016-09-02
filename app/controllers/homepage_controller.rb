class HomepageController < ApplicationController
  def home
    @results = []
    if params["results"]
      arr = [Character, Starship, Planet, Species, Vehicle]
        arr.each do |a|
            # if a == Film
            #   @results << a.where("LOWER(title) LIKE LOWER('%#{params["results"]}%')")
            # else
            @results += a.where("LOWER(name) LIKE LOWER('%#{params["results"]}%')")
            # end
        end
    end
  end
  p @results
end
