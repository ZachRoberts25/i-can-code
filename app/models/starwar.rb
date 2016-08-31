require 'httparty'
class Starwar < ApplicationRecord
  def self.get_characters
    starwars_characters = []
    response = HTTParty.get("http://swapi.co/api/people/")
    results = response["results"]
    results.each {|result| @starwars_characters << result}
    next_url = response["next"]
    while(!next_url.nil?) do
      new_response = HTTParty.get(next_url)
      new_results = new_response["results"]
      new_results.each {|result| @starwars_characters << new_results}
      next_url = new_response["next"]

    end
    starwars_characters
  end

end
