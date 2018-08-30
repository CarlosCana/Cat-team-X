class ChargesController < ApplicationController

    def new
    end

    def create
      # Amount in cents
      @amount = @current_cart.sub_total.to_i * 100
      
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )
      
      # Destroy the cart when order is payed and so complete (before was in the order controller, create method)
      Cart.destroy(session[:cart_id])
      session[:cart_id] = nil
      
      redirect_to root_path
      flash[:success] = 'Thank you for your order'
      ModelMailer.new_record_notification
      
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

end
