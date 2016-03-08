class OrdersController < ApplicationController
	def create
	    @order = Order.new(order_params)
	    if @order.save
	      redirect_to @registration.paypal_url(registration_path(@registration))
	    else
	      redirect_to root_path
    	end
  	end
end
