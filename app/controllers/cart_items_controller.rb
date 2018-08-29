class CartItemsController < ApplicationController
  def create
    # Find associated product and current cart
    chosen_item = Item.find(params[:item_id])
    current_cart = @current_cart

    if user_signed_in?
      # If cart already has this product then find the relevant cart_item and iterate quantity otherwise create a new cart_item for this product
      if current_cart.items.include?(chosen_item)
        # Find the cart_item with the chosen item
        @cart_item = current_cart.cart_items.find_by(:item_id => chosen_item)
        # Iterate the cart_item's quantity by one
        @cart_item.quantity += 1
      else
        @cart_item = CartItem.new
        @cart_item.cart = current_cart
        @cart_item.item = chosen_item
      end

      # Save and redirect to cart show path
      @cart_item.save
      redirect_to cart_path(current_cart)
    else
      flash[:error] = 'You must be logged-in to shop on our lovely website !'
      redirect_to new_user_session_path
    end 
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path(@current_cart)
  end

  # Find cart_item and then increment or decrement, save and redirect back to cart show page (make sure cannot reduce below 1)
  def add_quantity
    @cart_item = CartItem.find(params[:id])
    @cart_item.quantity += 1
    @cart_item.save
    redirect_to cart_path(@current_cart)
  end

  def reduce_quantity
    @cart_item = CartItem.find(params[:id])
    if @cart_item.quantity > 1
      @cart_item.quantity -= 1
    end
    @cart_item.save
    redirect_to cart_path(@current_cart)
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:quantity, :item_id, :cart_id)
  end
end
