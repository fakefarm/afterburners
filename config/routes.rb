Afterburners::Application.routes.draw do

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :mixes
  resources :users

  root 'pages#index'
end
