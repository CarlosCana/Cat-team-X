class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  # Creation of a new instance variable with the params defined in the private method
  # Before saving the order iteration through the cart_item lines (of current cart) and add them in the current order
  # It is necessary to put the cart id of the cart item to nil so when the cart will be destroy, the cart_items wont be but here if we want to access current cart price with Stripe we need to keep the item
  # Once the order is complete, the cart is drstroyed and the session (cart id) set to nil so the user can start shopping for a new order
  def create
    @order = Order.new(order_params)
    @current_cart.cart_items.each do |product|
      @order.cart_items << product
    end
    @order.save
    redirect_to new_charge_path
  end

  private
    def order_params
      params.require(:order).permit(:name, :email, :address, :pay_method)
    end
end
