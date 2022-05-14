Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :buildings  
  resources :apartments
  # Defines the root path route ("/")
  "apartments#index"
end
