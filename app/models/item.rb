class Item < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  # Validates the presences of a title with a minimum lenght of 2 characters
  validates :title, presence:true, length: {minimum: 2}

  # Validates a description presences with a maximum lenght of 100 characters
  validates :description, presence:true, length: {maximum: 100}

  # Validates the value of price as only numerical
  validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }

  # Validates the presences of an image url
  validates :image_url, presence:true

end
