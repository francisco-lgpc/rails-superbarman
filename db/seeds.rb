require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CITIES = %w(Berlin Amsterdam London Paris Lisbon Barcelona)
LANGUAGES = %w(Spanish Portuguese German Dutch)
TITLE_ADJ = %w(Sexy Cool Amazing Laidback Partyguru Awesome Dank)
RANDOM_COCKTAIL_URL = "http://www.thecocktaildb.com/api/json/v1/1/random.php"


Bartender.destroy_all
Party.destroy_all
User.destroy_all

12.times do

  args = {}
  args[:name]         = "Izabel do Santos"
  args[:title]        = "Sexy Caipirinha"
  args[:phone_number] = "+49.680.47.64.90"
  args[:email]        = "izabeldosantos@superbarman.com"
  args[:bio]          = "Hi all! My name is Izabel and I come from Brazil. Graduated from the Bartender School of New York, I've been living in Berlin for the last 5 years.
  My goal: bring you the flavors of Rio de Janeiro's markets. Lime, chacaca and love! Tchau Tchau! "
  args[:rating]       = rand(1..5)
  args[:location]     = "Berlin"
  args[:languages]     = "English German Portuguese"


  1.upto(3) do |i|
    cocktail_json = open(RANDOM_COCKTAIL_URL).read
    cocktail_parsed = JSON.parse(cocktail_json)
    cocktail_data = cocktail_parsed["drinks"].first
    args["speciality_#{i}".to_sym] = cocktail_data["strDrinkThumb"]
  end

  b = Bartender.new(args)
  p b.errors.full_messages unless b.save

end

Bartender.all.each_with_index do |bartender, i|
  bartender.picture = "#{(i + 1).to_s}.jpg"
  bartender.save!
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
    party.size = 30
    party.save!
  end
end
p "Everything OK!"



