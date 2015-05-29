Rails.application.routes.draw do

  get 'customers/new'

  get 'customers/create'

  get 'customers/show'

  get 'customers/index'

  resources :flavors
  root to: 'flavors#new'


  # resources :toppings
  # reNesources :containments
end


#user 1 all orders from
