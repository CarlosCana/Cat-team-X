Rails.application.routes.draw do
  root 'item#index'
  get 'items/:id', to: 'item#show', as: 'item_show'

  devise_for :users
  resources :charges
end
