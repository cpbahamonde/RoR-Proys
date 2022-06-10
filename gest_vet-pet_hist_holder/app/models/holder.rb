class Holder < ApplicationRecord
    has_many :pets, dependent: :destroy

    def pets
        @pets = self.pets.count            
    end 
end
