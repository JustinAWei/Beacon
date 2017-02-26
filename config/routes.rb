Rails.application.routes.draw do
  root to: 'home#index'

  #Accounts
  post '/account', to: 'account#create'
  get '/dashboard', to: 'account#dashboard', as: 'dashboard'
  get '/signup', to: 'account#new', as: 'signup'

  #Session / Login
  get '/login', to: 'session#new', as: 'login'
  post '/login', to: 'session#create'
  get '/logout', to: 'session#destroy'

  #Items
  post '/items', to: 'items#create', as: 'create_item'
  get '/checkout', to: 'items#scan'
  post '/checkout', to: 'items#checkout'
end
