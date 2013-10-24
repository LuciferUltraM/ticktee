Ticketee::Application.routes.draw do
    
	root "projects#index"
	
    namespace :admin do
    	root :to => "base#index"
        resources :users
    end
    
	resources :users
	
	resources :projects do
		resources :tickets
	end
	
	get "/signin", to: "sessions#new"
	post "/signin", to: "sessions#create"
    

end
