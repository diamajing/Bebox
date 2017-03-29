Rails.application.routes.draw do
  

  devise_for :users
 get 'prix', to: 'frontend/pages#price', as: 'price'

 get 'maps', to: 'frontend/pages#maps', as: 'maps'
 get 'app', to: 'frontend/pages#maps', as: 'maps'
 get 'shop', to: 'frontend/shop#index', as: 'shop'
 get 'shop/products/:id', to: "frontend/shop#show", as: 'shop_product'
 get 'order', to: "frontend/shop#order" , as: 'order_path'
 post 'confirm_order', to: 'frontend/shop#confirm_order'
 get 'thanks', to: 'frontend/shop#thanks'

  
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
    resources :products
    get "maintenances/note", to: "maintenances#note", as: "note"
    get "maintenances/new2", to: "maintenances#new2"
  end

  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root "frontend#index"
    get "admin", to: "backend#index", as: "admin"
    get "management", to: "backend#index"
    get "backend/inventory", to: "backend#inventory", as: "inventory"
end
