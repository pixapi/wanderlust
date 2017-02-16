Rails.application.routes.draw do

  root to: 'sessions#homepage'

  resources :users, only: [:new, :create, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/about', to: 'sessions#about'
end
