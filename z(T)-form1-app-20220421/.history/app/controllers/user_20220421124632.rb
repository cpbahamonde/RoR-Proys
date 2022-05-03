class User < ApplicationRecord
    validates :email, presence: true
    validates :age, 
end