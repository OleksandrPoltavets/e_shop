Rails.application.routes.draw do

  root to: 'products#index'

  devise_for :users
  resources :products, only: [:index, :show] do
    member do
      get 'add_to_cart'
    end
  end
  resources :order_items, only: [:index, :destroy]
end
