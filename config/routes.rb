Rails.application.routes.draw do
  get 'containments/index'

  get 'containments/show'

  get 'toppings/index'

  get 'toppings/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :orders
  # root to: 'orders#new'

  resources :flavors
  # root to: 'flavors#new'

  resources :toppings
  # root to: 'toppings#new'

  resources :containments
  # root to: 'containments#new'

  root 'home#index'
  get 'home/index'

  get 'customers/new'

  get 'customers/create'

  get 'customers/show'

  get 'customers/index'




  # resources :toppings
  # reNesources :containments
end
