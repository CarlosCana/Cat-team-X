Rails.application.routes.draw do

  get 'carts/:id', to: 'carts#show', as: 'cart'
  delete 'carts/:id', to: 'carts#destroy'

  post 'cart_items/:id/add' => "cart_items#add_quantity", as: "cart_item_add"
  post 'cart_items/:id/reduce' => "cart_items#reduce_quantity", as: "cart_item_reduce"
  post 'cart_items', to: "cart_items#create"
  get 'cart_items/:id' => "cart_items#show", as: "cart_item"
  delete 'cart_items/:id' => "cart_items#destroy"

  resources :item
  devise_for :users
  resources :charges
end
