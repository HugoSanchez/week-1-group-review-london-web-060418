require 'pry'
## QUESTION 1

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
  "weight": 90,
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


# How would you get the url for Bulbasaur's ability?

def find_Bulbasaur_url(hash, pokemon_name)
  url = nil
  hash.each do |creature|
    if creature[:name] == pokemon_name
      url = creature[:abilities][0][:ability][:url]
    end
  end
  url
end


# How would you return the first pokemon with base experience over 40?

def first_by_experience(hash, exp)
  hash.find do |pmon|
    pmon[:base_experience] >= exp
  end
end

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)

def find_all_by_experience(pokemon, exp)
  pokemon.select do |pmon|
    pmon[:base_experience] >= exp
  end
end

# How would you return an array of all of the pokemon's names?

def find_names(hash)
  names = hash.map do |pmon|
    pmon[:name]
  end
  names
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?

def check_weight(hash, weight)
  selection = hash.select do |pmon|
    pmon[:weight] >= weight
  end
  if selection.length > 0
    return true
  else
    return false
  end
end


binding.pry
1
