# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#This is to fetch the data api, and return it
# Character.destroy_all
if !Species.find_by(name: "unknown")
Species.create(name: "unknown")
end

def get_all(type)
  array = []
  url = "http://swapi.co/api/"
  url += type
  response = HTTParty.get(url)
  results = response["results"]
  results.each {|result| array << result}
  next_url = response["next"]
  while(!next_url.nil?) do
    new_response = HTTParty.get(next_url)
    new_results = new_response["results"]
    new_results.each {|result| array << result}
    next_url = new_response["next"]
  end
  array
end

def populate_database(model_type, type)
  if model_type.all.size == 0
    get_all(type).each do |content|
      @new_data = model_type.new
      content.each do |k,v|
        #Takes care of character belongs to a species relationship
        if k == "species" && model_type.class == Character
          if v.empty?
            @new_data.species = Species.find_by(name: "unknown")
          else
            @new_data.species = Species.find_by(url: v[0])
          end
        end
        if model_type.column_names.include?(k)
          #Takes care of character belongs to homeworld relationship
          if k == "homeworld"
            @new_data.planet = Planet.find_by(url: v)
          end
          @new_data.assign_attributes(k => v)
        end
      end
      @new_data.save!
    end

  end
end

def add_characters_to_films
  people = get_all("people")
  people.each do |peep|
    films = peep["films"]
    films.each do |film|
      Filmcharacter.create(film: Film.find_by(url: film), character: Character.find_by(name: peep["name"]))
    end

  end
end

populate_database(Starship, "starships")
populate_database(Character, "people")
populate_database(Vehicle, "vehicles")
populate_database(Species, "species")
populate_database(Planet, "planets")
populate_database(Film, "films")
add_characters_to_films
