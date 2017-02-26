Rails.application.routes.draw do
  root to: 'session#new'

  #Accounts
  post '/', to: 'account#create'
  get '/dashboard', to: 'account#dashboard', as: 'dashboard'
  get '/signup', to: 'account#new', as: 'signup'

  #Session / Login
  get '/login', to: 'session#new', as: 'login'
  post '/login', to: 'session#create'
  get '/logout', to: 'session#destroy'

<<<<<<< HEAD
  #Employees
  get '/employees', to: 'employees#show'
  post '/employees', to: 'employees#create'

  #Items
  get 'items', to: 'items#show'
  post '/items', to: 'items#create'

  #Checkout
  get '/employees/:id/checkout', to: 'items#scan'
=======
  get '/checkout', to: 'items#scan'
>>>>>>> 04b358e21ac7a7446dfa9abf6132a7e699f62c7f
  post '/employees/:id/checkout', to: 'items#checkout'
end
