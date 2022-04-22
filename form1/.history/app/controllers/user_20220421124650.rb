class User < ApplicationRecord
    validates :email, presence: true
    validates :age, numericality: {only_integer}
end