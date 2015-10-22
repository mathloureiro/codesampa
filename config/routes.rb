Rails.application.routes.draw do
  resources :courses

  devise_for :users
  resources :pages, only: [:index]
  root 'pages#index'
end