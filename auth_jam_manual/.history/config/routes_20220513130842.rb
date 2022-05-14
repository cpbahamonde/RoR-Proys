Rails.application.routes.draw do
  resources :stories
  resources :users, only: [:new, :create, :show]
  resources :
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
