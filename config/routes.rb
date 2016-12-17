Rails.application.routes.draw do

  root to: 'products#index'

  devise_for :users

  resources :products do
    member do
      get 'add_to_cart'
    end
  end
  resources :orders
  resources :order_items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
