class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = params[:price]
    @event = Event.find(params[:id])

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })

@event.noob << current_user
flash[:succes] = "Vous vous êtes inscrit à l'événement "
redirect_to event_path(@event.id)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
