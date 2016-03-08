class ChargesController < ApplicationController

	def create
    # current_product.charges.create(product: current_product)

    # Amount in cents
    @amount = (current_product.price * 100).to_i

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => current_product.title,
      :currency    => 'usd'
    )
    redirect_to product_path(current_product)
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end

  private

  def current_product
    current_product ||= Product.find(params[:product_id])
  end

end
