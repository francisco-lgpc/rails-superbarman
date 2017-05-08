class PaymentsController < ApplicationController
before_action :set_party

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

  charge = Stripe::Charge.create(
    customer:     customer.id,
    amount:       @party.price_cents,
    description:  "Payment for #{@party.theme} - #{@party.bartender.name}",
    currency:     @party.price.currency
  )

  @party.update(payment: charge.to_json, payment_status: 'true')
  redirect_to party_path(@party)

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_party_payment_path(@party)
  end

private

  def set_party
    @party = Party.where(payment_status: 'false').find(params[:party_id])
  end
end
