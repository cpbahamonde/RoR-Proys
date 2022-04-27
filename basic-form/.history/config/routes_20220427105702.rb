Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # rutas POST
  post 'greetings', to: 'greetings#hello'
  post 'byebye', to: 'greetings#bye', as: 'chao'
  
  # rutas GET
  get 'say-hello', to: 'greetings#say_hello'

  # Defines the root path route ("/")
  # root "articles#index"
end
