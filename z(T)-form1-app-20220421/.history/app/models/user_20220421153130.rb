class User < ApplicationRecord
    validates :email, presence: true
    validates :age, numericality: { only_integer: true } 
    validates :age, numericality: { greater_than: 17, less_than: 100 }
    scope :find_valid, -> { where("age > ?", 0) }
end
