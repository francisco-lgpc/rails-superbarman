class Party < ApplicationRecord
  TYPES = ['Party', 'Birthday', 'Hen/Stag do', 'Leaving do', 'House Warming', 'Wedding']
  SIZES = ['5-29', '30-59', '60-90']
  belongs_to :user
  belongs_to :bartender
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :theme, inclusion: { in: TYPES }
  accepts_nested_attributes_for :user
end
