Rails.application.routes.draw do
  resources :holders
  resources :pethistories
  resources :pets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pethistories#index"
end
