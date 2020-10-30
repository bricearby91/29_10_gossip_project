Rails.application.routes.draw do
	get 'profile', to: 'sessions#profile'
	post 'sessions/new', to: 'sessions#create'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/create'
	put '/gossips/:id', to: 'comments#create', as: 'salut'
	resources :gossips
	resources :comments
	resources :users
	resources :cities
	get '/team', to: 'static_pages#team'
	get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
