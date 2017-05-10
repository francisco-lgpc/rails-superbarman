require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GITHUB_PIC_URL = 'https://avatars.githubusercontent.com/'
SIZE_OPTION = '?size=200'
GITHUB_ACCOUNTS = [
  'espinosaalex',
  'daniel-huertas',
  'francisco-lgpc',
  'FForstbach',
  'GordonEuller',
  'izabellima',
  'dinosaurjoe',
  'Lauvries',
  'MikeShiel',
  'wabi69sabi',
  'patrick-scheuchzer',
  'Lupiane',
  'RobinKamp',
  'sarahbethwillis',
  'letired',
  'luytes'
]

RANDOM_COCKTAIL_URL = "http://www.thecocktaildb.com/api/json/v1/1/random.php"

REVIEWS = [
  'really cool',
  'nice',
  'Awesome!!',
  'Best time of my life',
  'Very nice time. Neat drinks',
  'Loved. It.',
  'Decent',
  'Ok, I guess',
  'A lot of energy',
  'Pretty good'
]

Party.destroy_all
Bartender.destroy_all
User.destroy_all

#Bartender_1
  args = {}
  args[:name]         = "Carla Hierro"
  args[:title]        = "Super C"
  args[:phone_number] = "+49 680 47 64 90"
  args[:email]        = "carlah@superbarman.com"
  args[:bio]          = "I've been a professional bartender for the past 6 years. I've worked under some of the most talented names in the business, serving at the best clubs Europe has to offer.\nThere are not many cities that can party harder than Berlin,\nI do not like to specialize in specific types of cocktails because I love to make them all! If you want the best cocktails of any mix,\nI'm your go to girl!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en de es"
  args[:picture]      = "12.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner1.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_2
  args = {}
  args[:name]         = "Gianstelvio Radesic"
  args[:title]        = "Geazy Eazy "
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "mianstelvior@superbarman.com"
  args[:bio]          = "After graduating from the International Cooking School in Bologna, I pursued my passion in experiementing with cocktails, making them more intricate and flavoursome than ever.\nIf you're willing to have cocktails that have never been heard of before,\nI'm the only one to make that happen!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en de fr"
  args[:picture]      = "7.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner2.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_3
  args = {}
  args[:name]         = "Marc Müller"
  args[:title]        = "Chinchilla Mülla"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "marcm@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Berlin, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "de en pt"
  args[:picture]      = "2.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner3.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_4
  args = {}
  args[:name]         = "Michael Orange"
  args[:title]        = "Uncle Mike"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "michaelo@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2016, in Berlin. Hometown boy who knows the local preferences, I can mix up Mexicana's to Belinerlufts on special request!\n I love meeting locals and starting up a party!"
  args[:languages]    = "de en pt"
  args[:location]     = "Berlin"
  args[:picture]      = "10.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner4.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_5
  args = {}
  args[:name]         = "Bailey Thompson"
  args[:title]        = "Speedy B"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "baileyt@superbarman.com"
  args[:bio]          = "American girl originally from New York. I've been bartending on cruise ships for 2 years.\nMy nickname originated from serving vast amounts of guests whilst maintain my high standards of cocktails.\n If you never want your guests to wait you know who to book!"
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "5.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner5.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_6
  args = {}
  args[:name]         = "Austin McKenzie"
  args[:title]        = "Mc Cowboy"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "austinm@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "3.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner6.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_7
  args = {}
  args[:name]         = "Myles McDonogh"
  args[:title]        = "Mojito Milos"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "mylesm@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "9.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner7.jpg"


  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_8
  args = {}
  args[:name]         = "Dimitri Leontakianakis"
  args[:title]        = "Takanaki"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "dimitril@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "6.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner8.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_9
  args = {}
  args[:name]         = "Eric Valentine"
  args[:title]        = "Deadpool"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "ericv@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "4.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner9.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_10
  args = {}
  args[:name]         = "Ben Peters"
  args[:title]        = "Big P"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "benp@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "26.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner10.jpg"


  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_11
  args = {}
  args[:name]         = "Rayne Renolds"
  args[:title]        = "R & R"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "rayner@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "8.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner1.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_12
  args = {}
  args[:name]         = "Harry Rensburg"
  args[:title]        = "Expecto-Patrón-um"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "harryr@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "22.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner2.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_13
  args = {}
  args[:name]         = "A.J Joshua"
  args[:title]        = "One Hit Wonder"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "ajj@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "23.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner3.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_14
  args = {}
  args[:name]         = "Will Zenga"
  args[:title]        = "Zen Master"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "willz@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "20.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner4.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_15
  args = {}
  args[:name]         = "Pierre Cousteau"
  args[:title]        = "Little French"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "pierrec@superbarman.com"
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "17.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner5.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_16
  args = {}
  args[:name]         = "Francisco Coutinho"
  args[:title]        = "Franny on the Rocks"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "London"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner6.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_17
  args = {}
  args[:name]         = "Lenny Vries"
  args[:title]        = "Dutch Rudder"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "London"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner7.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_18
  args = {}
  args[:name]         = "Mike Shiel"
  args[:title]        = "African Magic"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "London"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner8.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_19
  args = {}
  args[:name]         = "Daniel Heurtas"
  args[:title]        = "Catalonian Bull"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Barcelona"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner9.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_20
  args = {}
  args[:name]         = "Sebastien Saunier"
  args[:title]        = "Sleazy Seb"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Paris"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner10.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_21
  args = {}
  args[:name]         = "Boris Pauliard"
  args[:title]        = "Big Bozz"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner1.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_22
  args = {}
  args[:name]         = "Andrey Barnov"
  args[:title]        = "White Russian"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner2.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_23
  args = {}
  args[:name]         = "Lucas Duarte"
  args[:title]        = "Sweet Lukes"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner3.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save


#Bartender_24
  args = {}
  args[:name]         = "Sarah Willis"
  args[:title]        = "Sour Manhatten"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner4.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_25
  args = {}
  args[:name]         = "Joe Schafer"
  args[:title]        = "Big Brown"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner5.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_26
  args = {}
  args[:name]         = "Georgios Kosmopoulos"
  args[:title]        = "Spartan Cosmo"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner6.jpg"


  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_27
  args = {}
  args[:name]         = "Isabel Lima"
  args[:title]        = "Bellini"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner7.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_28
  args = {}
  args[:name]         = "Spencer Bray"
  args[:title]        = "Majestic Beardy-man"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner8.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_29
  args = {}
  args[:name]         = "Kevin Ma"
  args[:title]        = "Milky Way"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner9.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save

#Bartender_30
  args = {}
  args[:name]         = "Philipp von Hammerstein"
  args[:title]        = "The Hammer"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = Faker::Internet.email
  args[:bio]          = "I graduated from the European Bartender School in 2014, in Puerto Rico. I recently moved back to Amsterdam, honning my skills in caribbean cocktails.\nThe caribbean allows a rich blend of exotic flavors that refreshes the soul.\nIf you feel like getting lost in paradise, I'm the bartender for you!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "#{rand(1..10)}.jpg"
  args[:password]     = "secret"
  args[:password_confirmation] = "secret"
  args[:bannerpicture] = "banner10.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save



users = GITHUB_ACCOUNTS.map do |account|
  picture_url = GITHUB_PIC_URL + account + SIZE_OPTION
  n = ''
  loop do
    names = []
    n = Faker::GameOfThrones.character

    break unless names.map(&:name).include?(n)
    names << n
  end
  User.new(first_name: n, email: Faker::Internet.safe_email(n), password: 'youknownothing', password_confirmation: 'youknownothing', facebook_picture_url: picture_url )
end



Bartender.all.each_with_index do |bartender, i|
  num_parties = rand(4..7)
  bartender_users = users.sample(num_parties)

  bartender_users.each do |bartender_user|
    party             = Party.new(address: Faker::Address.street_address + ', ' + bartender.location, theme: Party::TYPES.sample, size: Party::SIZES.sample, start_time: Time.now)
    bartender.parties << party
    bartender_user.parties  << party
    bartender_user.save!

    REVIEWS.sample(1).each do |content|
      r = Review.new(content: content, rating: rand(3..5))
      r.bartender = bartender
      r.party     = party
      r.user      = bartender_user
      r.save!
    end

  end

  bartender.parties.each do |party|
    party.date = Date.new(2017, rand(1..12), rand(1..28))
    party.save!
  end
end
p "Everything OK!"

