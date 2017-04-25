# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

LANGUAGES = %w(English Spanish Italian Portuguese German Polish Norwegian Danish)
TITLE_ADJ = %w(Sexy Cool Amazing Laidback Partyguru)


args[:name]        = Faker::GameOfThrones.character
args[:title]       = "#{TITLE_ADJ.sample} #{Faker::Pokemon.name}"
args[:phone_numer] = Faker::PhoneNumber.cell_phone
args[:email]       = Faker::Internet.safe_email(name)
args[:bio]         = Faker::Hipster.paragraph
args[:rating]      = rand(1..5)
args[:location]    = Faker::GameOfThrones.city

languages   = LANGUAGES.sample(5)
rand(1..5).times do
  args["language #{i}".to_sym] = languages[i]
end

languages   = LANGUAGES.sample(5)
rand(1..5).times do
  args["language #{i}".to_sym] = languages[i]
end

3.times do
  RANDOM_COCKTAIL_URL = "http://www.thecocktaildb.com/api/json/v1/1/random.php"
  COCKTAIL_JSON = open(RANDOM_COCKTAIL_URL).read
  COCKTAIL_PARSED = JSON.parse(COCKTAIL_JSON)
  COCKTAIL_DATA = COCKTAIL_PARSED["drinks"].first
  args["speciality #{i}".to_sym] = COCKTAIL_DATA["strDrinkThumb"]
end

b = Bartender.new(args)

p b.save ? 'everything ok' : b.errors.full_messages
