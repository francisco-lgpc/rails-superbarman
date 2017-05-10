class PaymentsController < ApplicationController
before_action :set_party

  def new
  end

  def create
    customer = Stripe::Customer.create(
      email:  current_user.email,
      source: params.require(:token)[:id]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,
      amount:       @party.price_cents,
      description:  "Payment for #{@party.theme} - #{@party.bartender.name}",
      currency:     @party.price.currency
    )

    @party.update(payment: charge.to_json, payment_confirmed: 'true')

    # Commented out so as to not waste all our credit
    # @party.send_text_to_bartender

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_party_payment_path(@party)
    end

  private

  def set_party
    @party = Party.where(payment_confirmed: 'false').find(params[:party_id])
  end
end
