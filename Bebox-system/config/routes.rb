Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "frontend#index"
  get "admin", to: "backend#index", as: "admin"
end
