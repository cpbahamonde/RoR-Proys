class User < ApplicationRecord
    validates :email, presence: true
    validates :age, numericality: {only_integer: true}
        validates :age, numericality: {only_integer: true}
end