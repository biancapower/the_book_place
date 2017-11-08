class ChargesController < ApplicationController
  before_action :set_item

  def new
  end

  def create

    # puts "---- #{@book.inspect}"
    @amount = (@book.price + @book.shipping_cost).to_i * 100
    application_fee = (@amount * 0.05).to_i     # 5%

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    # charge
    charge_params = {
      customer: customer.id,
      amount: @amount,
      description: @book.title,
      currency: 'aud',
      capture: true
    }

    charge_params[:destination] = User.find(@book.user_id).stripe_id
    charge_params[:application_fee] = application_fee

    Stripe::Charge.create(charge_params) # return a Stripe::Charge object



    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def thanks
  end

  private
  def set_item
    @book = Book.find(params[:book_id])
  end
end



# charge = Stripe::Charge.create(
#   customer: customer.id,
#   amount: @amount,
#   description: @book.title,
#   currency: 'aud'
# )
#
#
# def create_order_charge(order)
#   charge_params = {
#     customer: customer.id,
#     amount: @amount,
#     description: @book.title,
#     currency: 'aud'
#   }
#
#   charge_params[:destination] = @book.user.stripe_user_id
#   charge_params[:application_fee] = 200
#
# Stripe::Charge.create(charge_params) # return a Stripe::Charge object
# end
