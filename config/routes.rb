Rails.application.routes.draw do

	namespace :admin do
		resources :users
		resources :sessions
		resources :albums
		resources :settings
		resources :faqs
		root 'settings#index'

		get 'login' => 'sessions#new', as: :login
		post 'logout' => 'sessions#destroy', as: :logout
	end

	get 'faq', to: 'pages#faq'
	root to: 'pages#home'  
end
