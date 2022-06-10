Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources :wine_oenologists
  resources :oenologist_magazines
  resources :job_titles
  resources :magazines
  resources :oenologists
  resources :wine_strains
  resources :strains
  resources :wines
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root 'wines#index'
end
