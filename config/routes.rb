Afterburners::Application.routes.draw do

  root 'pages#index'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :categories, only: [:index, :create, :new]
  resources :mixes
  resources :users
  resources :votes, only: [:create, :index]
end
