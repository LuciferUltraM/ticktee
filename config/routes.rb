Ticketee::Application.routes.draw do
    
	root "projects#index"
	
    namespace :admin do
    	root :to => "base#index"
        resources :users do
        	resources :permissions
        	put :permissions, to: "permissions#set",
        						as: "set_permissions"
        end
    end
    
	resources :users
	
	resources :projects do
		resources :tickets
	end
	
	get "/signin", to: "sessions#new"
	post "/signin", to: "sessions#create"
    delete "/signout", to: "sessions#destroy", as: "signout"

end
