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
  get '/items/:id', to: 'items#qr', as: 'item_qr'
  get '/items/:id/name', to: 'items#name', as: 'item_name'
  get '/items/:id/checked_out', to: 'items#checked_out', as: 'item_checked_out'
  get '/scan', to: 'items#scan', as: 'scan'
  post '/checkout', to: 'items#checkout', as: 'checkout'
  post '/checkin', to: 'items#checkin', as: 'checkin'
end
