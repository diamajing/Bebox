Rails.application.routes.draw do
  
  
namespace :frontend do
  resources :contacs
end
  

  namespace :backend do
    resources :parts
  end


  namespace :backend do
    resources :maintenances
    get "maintenances/note", to: "maintenances#note"
  end

  
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
