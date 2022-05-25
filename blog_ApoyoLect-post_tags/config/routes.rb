Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :tags
  resources :posts
  resources :post_tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
