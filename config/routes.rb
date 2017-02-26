Rails.application.routes.draw do

  root to: 'session#new'

  #Account creation
  post '/' => 'account#create'
  get '/dashboard' => 'account#dashboard', as: 'dashboard'
  get '/signup' => 'account#new', as: 'signup'

  #Session creation
  get '/login' => 'session#new', as: 'login'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/employees/:id/checkout', to: 'items#scan'
  post '/employees/:id/checkout', to: 'items#checkout'
end
