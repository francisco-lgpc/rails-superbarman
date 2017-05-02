class Bartender < ApplicationRecord
  LANGUAGES = {
    'en' => 'English',
    'es' => 'Spanish',
    'pt' => 'Portuguese',
    'de' => 'German',
    'nl' => 'Dutch',
    'fr' => 'French'
  }

  has_many :parties
  has_many :users, through: :parties
  has_many :reviews
  has_many :cocktails, dependent: :destroy
end
