require 'faker'
require 'open-uri'

# Destruction des Reviews et Booking en premier pour pouvoir supprimer les User ensuite
# Review.destroy_all
# Booking.destroy_all
# User.destroy_all
#
# 20.times do
  # user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
    # email: Faker::Internet.email, password: "123456", avatar: Faker::Avatar.image)
  # file = URI.open(user[:avatar])
  # user.photo.attach(io: file, filename: "avatar.png", content_type: "image/png")
  # user.save!
# end
#
# Capsule.destroy_all
#
# CAPSULES_DATA = [
  # {
    # photo_url: "https://i.ytimg.com/vi/PLIAp5nr0q0/maxresdefault.jpg",
    # params:
    # {
      # name: "QUEEN - CONCERT LIVE AID",
      # year: 1985,
      # advices: "N'oubliez pas d'apporter votre appareil photo et de profiter de l'énergie incroyable.",
      # price_per_day: 150.0,
      # description: "Revivez l'historique concert Live Aid de Queen au stade de Wembley."
    # }
  # },
  # {
    # photo_url: "https://imgresizer.eurosport.com/unsafe/1280x960/smart/filters:format(jpeg)/origin-imgresizer.eurosport.com/2014/05/13/1236321-26579565-2560-1440.jpg",
    # params:
    # {
      # name: "Finale Coupe du Monde 1998",
      # year: 1998,
      # advices: "Portez vos couleurs françaises et profitez de l'atmosphère électrique.",
      # price_per_day: 200.0,
      # description: "Voyez la victoire de la France lors de la finale de la Coupe du Monde 1998."
    # }
  # },
  # {
    # photo_url: "https://images.rtl.fr/~c/2000v2000/rtl/www/1303579-neil-armstrong-le-premier-homme-a-avoir-marche-sur-la-lune-en-juillet-1969.jpg",
    # params:
    # {
      # name: "Marche sur la Lune",
      # year: 1969,
      # advices: "Apportez un appareil photo et profitez de la vue spectaculaire sur la Terre.",
      # price_per_day: 300.0,
      # description: "Accompagnez Neil Armstrong et Buzz Aldrin lors de leur historique marche sur la Lune."
    # }
  # },
  # {
    # photo_url: "https://www.unjourdeplusaparis.com/wp-content/uploads/2015/04/photo-inauguration-tour-eiffel.jpg",
    # params:
    # {
      # name: "Inauguration de la Tour Eiffel",
      # year: 1889,
      # advices: "Prenez des photos et admirez la vue imprenable sur Paris.",
      # price_per_day: 100.0,
      # description: "Assistez à l'inauguration de la Tour Eiffel lors de l'Exposition universelle de 1889."
    # }
  # },
  # {
    # photo_url: "https://www.retronews.fr/sites/default/files/cinematographe_lumiere_affiche_.auzolle_marcellin_btv1b9005852b.jpeg",
    # params:
    # {
      # name: "Première projection des frères Lumière",
      # year: 1895,
      # advices: "Assistez à l'un des premiers films de l'histoire du cinéma.",
      # price_per_day: 80.0,
      # description: "Voyez la première projection publique des frères Lumière, marquant le début du cinéma."
    # }
  # },
  # {
    # photo_url: "https://d2v9ipibika81v.cloudfront.net/uploads/sites/28/Dr.King-1-1-1140x684.jpg",
    # params:
    # {
      # name: "Discours de Martin Luther King",
      # year: 1963,
      # advices: "Écoutez l'un des discours les plus emblématiques de l'histoire.",
      # price_per_day: 120.0,
      # description: "Rejoignez la foule lors du célèbre discours « I Have a Dream » de Martin Luther King."
    # }
  # },
  # {
    # photo_url: "http://img.over-blog-kiwi.com/1/48/52/52/20151027/ob_83ed68_statue-de-la-liberte-inauguration-188.jpg",
    # params:
    # {
      # name: "Inauguration de la Statue de la Liberté",
      # year: 1886,
      # advices: "Prenez des photos et profitez de la cérémonie d'inauguration.",
      # price_per_day: 100.0,
      # description: "Assistez à l'inauguration de la Statue de la Liberté, un symbole d'amitié entre la France et les États-Unis."
    # }
  # },
  # {
    # photo_url: "https://www.larousse.fr/encyclopedie/data/images/1310334-Ludwig_van_Beethoven.jpg",
    # params:
    # {
      # name: "Première de la 9e symphonie de Beethoven",
      # year: 1824,
      # advices: "Profitez de l'une des plus belles œuvres musicales jamais composées.",
      # price_per_day: 110.0,
      # description: "Vivez la première représentation de la 9e symphonie de Beethoven à Vienne."
    # }
  # },
  # {
    # photo_url: "https://www.museedelhistoire.ca/cmc/exhibitions/civil/egypt/images/arch26b.jpg",
    # params:
    # {
      # name: "Construction des pyramides égyptiennes",
      # year: -2580,
      # advices: "Observez les techniques de construction et les efforts déployés pour bâtir ces monuments.",
      # price_per_day: 250.0,
      # description: "Voyagez dans le temps pour assister à la construction des pyramides égyptiennes."
    # }
  # },
  # {
    # photo_url: "https://upload.wikimedia.org/wikipedia/commons/3/31/1904WrightFlyer.jpg",
    # params:
    # {
      # name: "Premier vol des frères Wright",
      # year: 1903,
      # advices: "Soyez témoin de la naissance de l'aviation moderne.",
      # price_per_day: 90.0,
      # description: "Assistez au premier vol motorisé et contrôlé des frères Wright à Kitty Hawk, en Caroline du Nord."
    # }
  # }
# ]
#
# CAPSULES_DATA.each do |capsule|
  # file = URI.open(capsule[:photo_url])
  # nouveau = Capsule.new(capsule[:params])
  # nouveau.user = User.all.sample
  # nouveau.picture = "https://picsum.photos/"
  # nouveau.photo.attach(io: file, filename: "image.png", content_type: "image/png")
  # nouveau.save!
# end

# Seeds pour booking

150.times do
  start = Faker::Date.between(from: '2020-01-01T00:00:00.000Z', to: '2030-01-01T00:00:00.000Z')
  fin = start + 100
  capsule = Capsule.all.sample
  user = User.all.sample
  statut = ["confirmé", "en attente", "refusé"].sample
  params = {
    capsule_id: capsule.id,
    user_id: user.id,
    start_date: start,
    end_date: fin,
    total_price: capsule.price_per_day * (fin - start),
    statu: statut
  }
  Booking.create!(params)
end

# Seeds pour reviews sur la première moitié des bookings
# Review.destroy_all

y = Booking.first.id
while y <= (Booking.first.id + (Booking.count / 2))
  params = {
    comment: Faker::Hipster.sentence,
    rating: rand(5),
    booking_id: y
  }
  Review.create!(params)
  y += 1
end
