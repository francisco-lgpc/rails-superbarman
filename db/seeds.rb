require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

RANDOM_COCKTAIL_URL = "http://www.thecocktaildb.com/api/json/v1/1/random.php"

Party.destroy_all
Bartender.destroy_all
User.destroy_all

#Bartender_1
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_2
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_3
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_4
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_5
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_6
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_7
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_8
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_9
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_10
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_11
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_12
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_13
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_14
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_15
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_16
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_17
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_18
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_19
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_20
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Berlin"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_21
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_22
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_23
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_24
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_25
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_26
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_27
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_28
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_29
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!

#Bartender_30
  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.\nMy goal: bring the flavors of Rio de Janeiro's markets to your house party! Lime, chacaca and love! Tchau Tchau!"
  args[:rating]       = rand(3..5)
  args[:location]     = "Amsterdam"
  args[:languages]    = "en pt de"
  args[:picture]      = "12.jpg"

  cocktails = (1..5).map do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    Cocktail.create(picture: cocktail_data["strDrinkThumb"], name: cocktail_data["strDrink"])
  end

  b = Bartender.new(args)
  b.cocktails = cocktails
  b.save!
  p b.errors.full_messages unless b.save!


Bartender.all.each_with_index do |bartender, i|
  rand(1..3).times do
    party             = Party.new(theme: 'Party')
    bartender.parties << party
    n                 = Faker::GameOfThrones.character
    user              = User.new(first_name: n, email: Faker::Internet.safe_email(n), password: 'youknownothing', password_confirmation: 'youknownothing')
    user.parties      << party
    user.save!
  end

  bartender.parties.each do |party|
    party.address = bartender.location
    party.date = Date.new(2017, rand(1..12), rand(1..28))
    party.size = 25
    party.save!
  end
end
p "Everything OK!"



