Rails.application.routes.draw do
  resources :courses, only: [:index, :show], path: 'cursos'

  devise_for :users
  resources :pages, only: [:index]
  root 'pages#index'
end