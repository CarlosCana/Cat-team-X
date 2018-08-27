Rails.application.routes.draw do
  root 'item#index'

  devise_for :users
end
