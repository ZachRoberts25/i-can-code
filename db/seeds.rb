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
        if k == "species"
          if v.empty?
            puts "this is happening?"
            @new_data.species = Species.find_by(name: "unknown")
          else
              @new_data.species = Species.find_by(url: v[0])
          end
        end
        if model_type.column_names.include?(k)
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

populate_database(Starship, "starships")
populate_database(Character, "people")
populate_database(Vehicle, "vehicles")
populate_database(Species, "species")
populate_database(Planet, "planets")
populate_database(Film, "films")
