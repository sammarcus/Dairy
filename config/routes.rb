Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :orders
  # root to: 'orders#new'

  resources :flavors
  # root to: 'flavors#new'

  resources :toppings
  # root to: 'toppings#new'

  resources :containments
  # root to: 'containments#new'

  resources :customers
  # root to: 'containments#new'

  root 'home#index'

end
