Ticketee::Application.routes.draw do
	
	root "projects#index"
	
	resources :users
	
	resources :projects do
		resources :tickets
	end
	
	get "/signin", to: "sessions#new"
	post "/signin", to: "sessions#create"
end
