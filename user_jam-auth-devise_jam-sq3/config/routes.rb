Rails.application.routes.draw do
  resources :jams
  get 'home/index'
  devise_for :users , controllers: { registrations: 'users/registrations' }
  root to: 'home#index'
end
