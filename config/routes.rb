Rails.application.routes.draw do
  

  devise_for :users
 get 'prix', to: 'frontend/pages#price', as: 'price'

 get 'maps', to: 'frontend/pages#maps', as: 'maps'

  namespace :frontend do 
    resources :contacts
  end

  namespace :backend do
    resources :contacts
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
