require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


LANGUAGES = %w(English Spanish Italian Portuguese German Polish Norwegian Danish)
TITLE_ADJ = %w(Sexy Cool Amazing Laidback Partyguru)
RANDOM_COCKTAIL_URL = "http://www.thecocktaildb.com/api/json/v1/1/random.php"

Bartender.destroy_all
50.times do

  args = {}
  args[:name]        = Faker::GameOfThrones.character
  args[:title]       = "#{TITLE_ADJ.sample} #{Faker::Pokemon.name}"
  args[:phone_number] = Faker::PhoneNumber.cell_phone
  args[:email]       = Faker::Internet.safe_email(args[:name])
  args[:bio]         = Faker::Hipster.paragraph
  args[:rating]      = rand(1..5)
  args[:location]    = Faker::GameOfThrones.city

  languages   = LANGUAGES.sample(5)
  1.upto(rand(1..5)) do |i|
    args["language_#{i}".to_sym] = languages[i]
  end


  1.upto(3) do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    args["speciality_#{i}".to_sym] = cocktail_data["strDrinkThumb"]
  end

  b = Bartender.new(args)
  p b.errors.full_messages unless b.save

end

p "Everything OK!"



