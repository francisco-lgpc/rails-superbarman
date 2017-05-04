class Party < ApplicationRecord
  TYPES = ['Party', 'Birthday', 'Hen/Stag do', 'Leaving do', 'House Warming', 'Wedding']
  SIZES = ['5-29', '30-59', '60-90']
  belongs_to :user
  belongs_to :bartender
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :theme, inclusion: { in: TYPES }
  accepts_nested_attributes_for :user

  def bartender_confirmed?
    self.bartender_confirmed
  end

  def pending_bartender_confirmation?
    self.pending_bartender_confirmation
  end

  def payment_confirmed?
    self.bartender_confirmed
  end

  def bartender_confirm
    self.pending_bartender_confirmation  = false
    self.bartender_confirmed             = true
  end

  def bartender_reject
    self.pending_bartender_confirmation  = false
    self.bartender_confirmed             = false
  end

  def payment_confirm
    self.payment_confirmed = true
  end

end
