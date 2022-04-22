class User < ApplicationRecord
    validates :email, presence: true
    validates :email, presence: true
    validates :email, presence: true
    validates :age, numericality: { only_integer: true } 
    validates :age, numericality: { greater_than: 17, less_than: 100 }
    scope :find_valid, -> { where("age > ?", 0) }
    before_save :set_full_name
    def set_full_name
        self.full_name = "#{ self.name } #{ self.last_name }"
    end
end
