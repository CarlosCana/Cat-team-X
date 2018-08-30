class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  module CartItemPrice
    class CartItem < ActiveRecord::Base
      belongs_to :item
      belongs_to :cart
      belongs_to :order, optional: true

      # LOGIC
      def total_price
        self.quantity * self.item.price
      end
    end
  end

  module CartPrice
    class Cart < ActiveRecord::Base
      has_many :cart_items, dependent: :destroy
      has_many :items, through: :cart_items

      # LOGIC
      def sub_total
        sum = 0
        self.cart_items.each do |cart_item|
          sum+= cart_item.total_price
        end
        return sum
      end
    end
  end
end
