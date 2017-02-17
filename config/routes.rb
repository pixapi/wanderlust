Rails.application.routes.draw do

  root to: 'pages#homepage'

  resources :users, only: [:new, :create, :show]

  resources :places, only: [:index, :new, :create, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/about', to: 'pages#about'
end
