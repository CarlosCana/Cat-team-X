class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :sanitize_devise_params, if: :devise_controller?
    # When a user comes to the page we need to figure out if he already has a cart or not (if not, let's create a new one)
    before_action :current_cart

    def sanitize_devise_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end

    private
      def current_cart
        if session[:cart_id]
          cart = Cart.find_by(:id => session[:cart_id])
          if cart.present?
            @current_cart = cart
          else
            session[:cart_id] = nil
          end
        end

        if session[:cart_id] == nil
          @current_cart = Cart.create
          session[:cart_id] = @current_cart.id
        end
      end 
end
