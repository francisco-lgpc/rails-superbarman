require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CITIES = %w(Berlin Amsterdam London Paris Lisbon Barcelona)
LANGUAGES = %w(English Spanish Portuguese German Dutch)
TITLE_ADJ = %w(Sexy Cool Amazing Laidback Partyguru)
RANDOM_COCKTAIL_URL = "http://www.thecocktaildb.com/api/json/v1/1/random.php"


Bartender.destroy_all
Party.destroy_all
User.destroy_all

12.times do

  args = {}
  args[:name]         = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
  args[:title]        = "#{TITLE_ADJ.sample} #{Faker::Pokemon.name}"
  args[:phone_number] = Faker::PhoneNumber.cell_phone
  args[:email]        = Faker::Internet.safe_email(args[:name])
  args[:bio]          = Faker::Hipster.paragraph
  args[:rating]       = rand(1..5)
  args[:location]     = "#{CITIES.sample}"

  languages = LANGUAGES.sample(4)
  languages << 'English'
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
    party.date = Date.new(2017, rand(1..12), rand(1..28)).to_s
    party.size = 30
    party.save!
  end
end
p "Everything OK!"



