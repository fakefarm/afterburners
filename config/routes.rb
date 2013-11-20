Afterburners::Application.routes.draw do

  get 'signup', to: 'users#new'

  resources :mixes
  resources :users

  root 'pages#index'
end
