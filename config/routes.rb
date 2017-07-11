Rails.application.routes.draw do
  root :to => 'products#index'
  get '/cart/checkout' => 'carts#checkout', as: 'checkout'

  get '/cart/complete' => 'carts#order_complete', as: 'complete'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products

  resources :order_items

  resources :accounts, :only => [:show] do
    resources :orders
  end

  resource :cart, only: [:show]

  resources :charges

end
