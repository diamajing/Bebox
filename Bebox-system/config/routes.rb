Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  root "frontend#index"
=======
namespace :backend do
	resources :customers
end
>>>>>>> 843d4264fa9262f225e27e210581c439bbcc8ee4
  get "admin", to: "backend#index", as: "admin"
end
