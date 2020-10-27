Rails.application.routes.draw do
  get 'user/show_details'
  get 'landing/show'
  get 'welcome/show'
  get 'static_pages/team'
	get '/team', to: 'static_pages#team'
	get '/contact', to: 'static_pages#contact'
	get 'welcome/:first_name', to: 'welcome#show'
	get 'landing', to: 'landing#show'
	get 'user/:first_name', to: 'user#show_details'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
