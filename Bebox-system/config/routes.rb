Rails.application.routes.draw do
  
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :backend do
    	resources :beboxs 
    end 
    
    namespace :backend do
        resources :customers
    end
    
    root "frontend#index"
    get "admin", to: "backend#index", as: "admin"
end
