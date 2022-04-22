class User < ApplicationRecord
    validates :email, presence: true
    validates :age, numericality: { only_integer: 17, less_than: 100 }
    validates :age, numericality: { greater_than: 17, less_than: 100 }
end