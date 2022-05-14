	Rails.application.routes.draw do
		  get 'libros/edit'
		  get 'libros/index'
		  get 'libros/show'

		    get "libros", to: "libros#index"
		    post "libros", to: "libros#create"
		    get "libros/new", to: "libros#new", as: "libros_new"
		    get "libros/:id/edit", to: "libros#edit", as: "libro_edit"
		    get "libros/:id", to: "libros#show", as: "libro"
		    patch  "libros/:id", to: "libros#update"
		    delete "libros/:id", to: "libros#destroy" , as: "libros_del"

		  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
		  # Defines the root path route ("/")
		  
		  root "libros#index"
	end

