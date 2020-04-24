## QUESTION 1
require 'pry'
pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 30,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

# binding.pry
# How would you get the url for Bulbasaur's ability?
# pokemon[0][:abilities][0][:ability][:url]
def get_urls(pokemon)
    pokemon.each do |pokemon|
        pokemon.each do |k,v|
            if k == "abilities"
                v.each do |k, v|
                end
            end
        end
    
    end
end

# get_urls(pokemon)
# How would you return the first pokemon with base experience over 40?
def find_first_over_40_pokemon(pokemon)
    pokemon.find {|pokemon| pokemon[:base_experience] > 40}    
end

# find_over_40_pokemon(pokemon)
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def find_all_over_40_pokemon(pokemon)
    pokemon.find_all {|pokemon| pokemon[:base_experience] > 40}    
end

# find_all_over_40_pokemon(pokemon)

# How would you return an array of all of the pokemon's names?
def pokemon_names(pokemon)
    pokemon.map do |pokemon|
        pokemon[:name]
    end
end

# puts pokemon_names(pokemon)

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
def heavier_than_60(pokemon)
    
    greater = false
    pokemon.each do |pokemon|
        if pokemon[:weight] > 60 
            greater = true
        end
    end 
    greater
    # binding.pry
end 

puts heavier_than_60(pokemon)

#  whatever method you use should return true if there are any such pokemon, false if not.
