Rails.application.routes.draw do
  root 'item#index'

  get 'carts/:id', to: 'carts#show', as: 'cart'
  delete 'carts/:id', to: 'carts#destroy'

  post 'cart_items/:id/add', to: "cart_items#add_quantity", as: "cart_item_add"
  post 'cart_items/:id/reduce', to: "cart_items#reduce_quantity", as: "cart_item_reduce"
  post 'cart_items', to: "cart_items#create"
  get 'cart_items/:id', to: "cart_items#show", as: "cart_item"
  delete 'cart_items/:id', to: "cart_items#destroy"

  resources :item
  resources :charges
  resources :orders

  devise_for :users
  end
