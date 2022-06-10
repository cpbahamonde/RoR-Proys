class GreetingsController < ApplicationController
    #skip_before_action :verify_authenticity_token, on: [:say_hello]

    def say_hello

    end

    def hello
        @name = params[:name]
        render :hello, status: :unprocessable_entity
    end
end
