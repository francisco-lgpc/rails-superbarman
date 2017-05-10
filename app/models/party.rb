class Party < ApplicationRecord
  TYPES = ['Party', 'Birthday', 'Hen/Stag do', 'Leaving do', 'House Warming', 'Wedding']
  SIZES = ['5-29', '30-59', '60-90']
  CITIES = ['Amsterdam', 'Barcelona', 'Berlin', 'Copenhagen', 'Lisbon', 'London', 'Paris']
  belongs_to :user
  belongs_to :bartender
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :theme, inclusion: { in: TYPES }
  accepts_nested_attributes_for :user
  monetize :price_cents
  before_save :set_price, :set_payment_confirmed

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
    Pusher.trigger('bartender-confirmation-channel', 'bartender-confirm', {
      message: 'confirmed'
    })
  end

  def bartender_reject
    self.pending_bartender_confirmation  = false
    self.bartender_confirmed             = false
  end

  def payment_confirm
    self.payment_confirmed = true
  end

  def send_text_to_bartender
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    client = Twilio::REST::Client.new account_sid, auth_token
    name = self.user.last_name == '' ? self.user.first_name : "#{self.user.first_name} #{self.user.last_name}"
    msg = self.message == '' ? '' : "\nPersonal message:\n#{self.message}"

    client.account.messages.create({
      from: '+4915735982115',
      to:   self.bartender.phone_number,
      body: "#{name} has booked a #{self.theme} scheduled for #{self.date.to_s(:long)}, in #{self.address}#{msg}"
    })
  end

  def send_text_to_user
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    client = Twilio::REST::Client.new account_sid, auth_token
    title = self.bartender.title
    bartender_name = self.bartender.name
    user_name = self.user.last_name == '' ? self.user.first_name : "#{self.user.first_name} #{self.user.last_name}"

    body = "Hello #{user_name},\n" \
           "Congratulations for booking your #{self.theme} through Superbarman!\n" \
           "You have booked #{title}, for #{self.date.to_s(:long)}, in #{self.address}."

    client.account.messages.create({
      from: '+4915735982115',
      to:   self.user.phone_number,
      body: body
    })
  end

  private

  def set_price
    self.price = Money.new(5000, 'EUR')
  end

  def set_payment_confirmed
    self.payment_confirmed
  end

end

