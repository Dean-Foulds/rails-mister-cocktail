require 'json'
require 'open-uri'

Cocktail.destroy_all
Ingredient.destroy_all

cocktails = [
  {
    name: "Old Fashioned",
    },
  {
    name: "Daiquiri",
    },
  {
    name: "Margarita",
    },
  {
    name: "Sidecar",
    },
  {
    name: "French 75",
    },
  {
    name: "Bloody Mary",
    },
  {
    name: "Irish Coffee",
    },
  {
    name: "Jack Rose",
    },
  {
    name: "Negroni",
    },
  {
    name: "Boulevardier",
    },
  {
    name: "Sazerac",
    },
  {
    name: "Vieux Carré",
    },
  {
    name: "Ramos Gin Fizz",
    },
  {
    name: "Mint Julep",
    },
  {
    name: "Whiskey Sour",
    },
  {
    name: "Mai Tai",
    },
  {
    name: "Planter's Punch",
    },
  {
    name: "Pisco Sour",
    },
  {
    name: "Cosmopolitan",
    },
  {
    name: "Tom Collins",
    },
  {
    name: "Last Word",
  }
]


url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)
ingredients["drinks"].each do |i|
  Ingredient.create(name: i["strIngredient1"]
end


cocktails.each { |cocktail| Cocktail.create(cocktail) }
