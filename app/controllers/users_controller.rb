class UsersController < ApplicationController
  def payment

  end

  def add_card
    if current_user.stripe_id.blank?
      customer = Stripe::Customer.create(
        email: current_user.email
      )
      current_user.stripe_id = customer.id
      current_user.save
    else
      customer = Stripe::Customer.retrieve(current_user.stripe_id)
    end

    # Add credit card to stripe
    month, year = params[:expiry].split("/")
    new_token = Stripe::Token.create(:card => {
        number: params[:number],
        exp_month: month,
        exp_year: year,
        cvc: params[:cvv]
      })
      customer.sources.create(source: new_token.id)

      flash[:notice] = "Your card has been saved."
      redirect_to payment_method_path
    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to payment_method_path
  end
end
