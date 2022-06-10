Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  authenticate :admin do
    resources :products
    resources :categories
  end

  resource :cart, only: [:show, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
