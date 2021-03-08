# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
  {name: 'Fish'},
  {name: 'Pork'},
  {name: 'Beef'},
  {name: 'Veg'}
])

Taco.create([
  {name: "Asada Zing Taco",
    image: "",
    description: "Bulgogi (Korean) marinated steak*
    topped with shiitake mushrooms, lettuce, soy sesame
    vinaigrette and sesame seeds",
    likes: 0,
    restaurant: "Taqueria Tsunami",
    url: "https://taqueriatsunami.com/",
    location: "Marietta, GA",
    category_id: 3    
  },

  {name: "Pacific Rim Taco",
    image: "",
    description: "Grilled chili crusted
    Mahi topped with lettuce, pico de gallo and hoisin
    lime aioli ",
    likes: 2,
    restaurant: "Taqueria Tsunami",
    url: "https://taqueriatsunami.com/",
    location: "Marietta, GA",
    category_id: 1
  },

  {name: "tuna tatako",
    image: "",
    description: "ancho-crusted tuna, asian slaw, thai basil vinaigrette, soy glaze, lettuce shell (served chilled). topped with: toasted sesame seeds",
    likes: 1,
    restaurant: "bartaco",
    url: "https://bartaco.com/",
    location: "Atlanta, GA",
    category_id: 1
  },

  {name: "Nashville hot tofu",
    image: "",
    description: "crispy tofu, napa slaw, ranch crema, house brined pickles, flour tortilla",
    likes: 10,
    restaurant: "Velvet Taco",
    url: "https://www.velvettaco.com/",
    location: "Atlanta, GA",
    category_id: 4
  }
])