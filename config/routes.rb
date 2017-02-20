Rails.application.routes.draw do

  root to: 'pages#homepage'

  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]

  resources :places, only: [:index, :new, :create, :show] do
    resources :comments, only: [:index, :new, :create]
  end

  resources :continents, only: [:show]

  resources :categories, only: [:show]

  namespace 'admin' do
    resources :places
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/about', to: 'pages#about'
end
