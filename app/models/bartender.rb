class Bartender < ApplicationRecord
  LANGUAGES = {
    'en' => 'English',
    'es' => 'Spanish',
    'pt' => 'Portuguese',
    'de' => 'German',
    'nl' => 'Dutch'
  }

  has_many :parties, dependent: :destroy
  has_many :users, through: :parties
  has_many :reviews, dependent: :destroy
end
