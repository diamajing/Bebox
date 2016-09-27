Rails.application.routes.draw do
  
<<<<<<< HEAD
  namespace :frontend do 
    resources :contacts
  end


  

  


  namespace :backend do
    resources :interventions
    resources :customers
    resources :beboxs 
    resources :parts
    resources :maintenances
    get "maintenances/note", to: "maintenances#note", as: "note"
    get "maintenances/new2", to: "maintenances#new2"
  end

  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root "frontend#index"
    get "admin", to: "backend#index", as: "admin"
end
