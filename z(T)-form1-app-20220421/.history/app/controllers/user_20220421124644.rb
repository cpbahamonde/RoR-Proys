class User < ApplicationRecord
    validates :email, presence: true
    validates :age, numericality: {}
end