class User < ApplicationRecord
validates :email, presence: true
validates :age, numericality: { greater_than: 17, less_than: 151 }
end