Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :buildings do  
    resources :apartments
  end
  # Defines the root path route ("/")
  "apartments#index"
end
