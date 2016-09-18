Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :backend do
	resources :customers
end
  get "admin", to: "backend#index", as: "admin"
end
