class GreetingsController < ApplicationController

    skip_before_action :verify_authenticity_token, on: [:hello]

    def index
    end


    # sólo muestra el formulario
    def say_hello
    end

    # mostraremos el nombre en otra vista
    def hello
        @name = params[:name]
        render :hello
    end
end
