Rails.application.routes.draw do

  root to: 'account#new'

  post '/account' => 'account#create'
  get '/dashboard' => 'account#dashboard', as: 'dashboard'
  get '/signup' => 'account#new', as: 'signup'

  get '/login' => 'session#new', as: 'login'
  post '/login' => 'session#create'
  post 'logout' => 'session#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/employers/:id/checkout', to: 'items#checkout'
end
