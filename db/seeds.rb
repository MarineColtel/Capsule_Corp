# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all

2.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Company.buzzword)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Capsule.destroy_all
capsules_data = [
  {
    name: "Concert Live Aid - Queen",
    year: 1985,
    advices: "N'oubliez pas d'apporter votre appareil photo et de profiter de l'énergie incroyable.",
    price_per_day: 150.0,
    photos: "https://example.com/queen_live_aid.jpg",
    description: "Revivez l'historique concert Live Aid de Queen au stade de Wembley."
  },
  {
    name: "Finale Coupe du Monde 1998",
    year: 1998,
    advices: "Portez vos couleurs françaises et profitez de l'atmosphère électrique.",
    price_per_day: 200.0,
    photos: "https://example.com/world_cup_1998.jpg",
    description: "Voyez la victoire de la France lors de la finale de la Coupe du Monde 1998."
  },
  {
    name: "Marche sur la Lune",
    year: 1969,
    advices: "Apportez un appareil photo et profitez de la vue spectaculaire sur la Terre.",
    price_per_day: 300.0,
    photos: "https://example.com/moon_landing.jpg",
    description: "Accompagnez Neil Armstrong et Buzz Aldrin lors de leur historique marche sur la Lune."
  },
  {
    name: "Inauguration de la Tour Eiffel",
    year: 1889,
    advices: "Prenez des photos et admirez la vue imprenable sur Paris.",
    price_per_day: 100.0,
    photos: "https://example.com/eiffel_tower.jpg",
    description: "Assistez à l'inauguration de la Tour Eiffel lors de l'Exposition universelle de 1889."
  },
  {
    name: "Première projection des frères Lumière",
    year: 1895,
    advices: "Assistez à l'un des premiers films de l'histoire du cinéma.",
    price_per_day: 80.0,
    photos: "https://example.com/lumiere_brothers.jpg",
    description: "Voyez la première projection publique des frères Lumière, marquant le début du cinéma."
  },
  {
    name: "Discours de Martin Luther King",
    year: 1963,
    advices: "Écoutez l'un des discours les plus emblématiques de l'histoire.",
    price_per_day: 120.0,
    photos: "https://example.com/martin_luther_king.jpg",
    description: "Rejoignez la foule lors du célèbre discours « I Have a Dream » de Martin Luther King."
  },
  {
    name: "Inauguration de la Statue de la Liberté",
    year: 1886,
    advices: "Prenez des photos et profitez de la cérémonie d'inauguration.",
    price_per_day: 100.0,
    photos: "https://example.com/statue_of_liberty.jpg",
    description: "Assistez à l'inauguration de la Statue de la Liberté, un symbole d'amitié entre la France et les États-Unis."
  },
  {
    name: "Première de la 9e symphonie de Beethoven",
    year: 1824,
    advices: "Profitez de l'une des plus belles œuvres musicales jamais composées.",
    price_per_day: 110.0,
    photos: "https://example.com/beethoven_ninth.jpg",
    description: "Vivez la première représentation de la 9e symphonie de Beethoven à Vienne."
  },
  {
    name: "Construction des pyramides égyptiennes",
    year: -2580,
    advices: "Observez les techniques de construction et les efforts déployés pour bâtir ces monuments.",
    price_per_day: 250.0,
    photos: "https://example.com/pyramids_construction.jpg",
    description: "Voyagez dans le temps pour assister à la construction des pyramides égyptiennes."
  },
  {
    name: "Premier vol des frères Wright",
    year: 1903,
    advices: "Soyez témoin de la naissance de l'aviation moderne.",
    price_per_day: 90.0,
    photos: "https://example.com/wright_brothers.jpg",
    description: "Assistez au premier vol motorisé et contrôlé des frères Wright à Kitty Hawk, en Caroline du Nord."
  }
]


capsules_data.each do |capsules|
  Capsule.create!(capsules)
end
