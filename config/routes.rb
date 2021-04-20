Rails.application.routes.draw do
  
  resources :cars
  resources :bodies
  resources :wheels
  resources :spoilers
  resources :paints
  resources :users

  get '/login', to: 'users#token_authenticate'
  post '/login', to: 'auth#create'
  post '/signup', to: 'users#signup'
  get '/profile', to: 'users#profile'

end
