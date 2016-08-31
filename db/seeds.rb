# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#This is to fetch the data api, and return it
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
#This creates 87 characters and puts it in our database
get_all("people").each do |person|
  character = StarwarsCharacter.new()
  person.each do |k,v|
    if StarwarsCharacter.column_names.include?(k)
      character.update(k => v)
      character.save
    end
  end
end
