Rails.application.routes.draw do

	root 'pages#index'
  devise_for :users
  
  resources :pages, only: [:index]
  
  resources :courses, only: [:index, :show], path: 'cursos' do
    resources :concepts, only: [:show], path: 'conceitos'
  end

  get '/artigos/:id' => 'contents#show', as: 'content'

  get '/admin' => 'admin/admin#index', as: :admin
  namespace :admin do
    resources :courses
    resources :concepts
    resources :contents
  end

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

end