class CartsController < ApplicationController
  # To display the current cart
  def show
    @cart = @current_cart
  end

  # To destroy (empty) the current cart so we put the session to nil and route to root
  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end
end
