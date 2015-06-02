Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'

  resources :orders, except: [:index]
  # root to: 'orders#new'

  resources :flavors
  # root to: 'flavors#new'

  resources :toppings
  # root to: 'toppings#new'

  resources :containments
  # root to: 'containments#new'

  resources :customers
  # root to: 'containments#new'


end
