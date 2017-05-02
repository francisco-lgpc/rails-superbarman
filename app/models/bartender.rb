class Bartender < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, # :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  LANGUAGES = {
    'en' => 'English',
    'es' => 'Spanish',
    'pt' => 'Portuguese',
    'de' => 'German',
    'nl' => 'Dutch'
  }

  has_many :parties
  has_many :users, through: :parties
  has_many :reviews
  has_many :cocktails, dependent: :destroy
end
