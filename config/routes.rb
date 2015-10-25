Rails.application.routes.draw do
	root 'pages#index'
	devise_for :users
  	resources :pages, only: [:index]
  	resources :courses, only: [:index, :show], path: 'cursos'

  	get '/admin' => "admin/admin#index", as: :adm
  	namespace :admin do
  	end
end