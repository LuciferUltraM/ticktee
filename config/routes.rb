Ticketee::Application.routes.draw do
  get "users/new"
  get "users/create"
  get "users/show"
	root "projects#index"
	
	resources :users
	
	resources :projects do
		resources :tickets
	end
	
	
end
