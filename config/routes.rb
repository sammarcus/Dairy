Rails.application.routes.draw do

  resources :flavors
  root to: 'flavors#new'


  # resources :toppings
  # reNesources :containments
end


#user 1 all orders from
