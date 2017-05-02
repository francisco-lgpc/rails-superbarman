class Party < ApplicationRecord
  TYPES = ['Party', 'Birthday', 'Hen/Stag do', 'Leaving do', 'House Warming', 'Wedding']
  belongs_to :user
  belongs_to :bartender
  has_many :reviews, dependent: :destroy
  validates :theme, inclusion: { in: TYPES }

end
