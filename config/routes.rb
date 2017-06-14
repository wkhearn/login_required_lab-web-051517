Rails.application.routes.draw do
  root 'sessions#index'
  get '/welcome', to: 'sessions#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/secret', to: 'secrets#show'
end
