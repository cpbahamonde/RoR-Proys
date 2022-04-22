class User < ApplicationController
    validates :email, presence: true
end