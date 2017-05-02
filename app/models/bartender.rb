class Bartender < ApplicationRecord
  has_many :parties, dependent: :destroy
  has_many :users, through: :parties
end
