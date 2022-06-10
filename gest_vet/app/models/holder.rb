class Holder < ApplicationRecord
    has_many :pets, dependent: :destroy

    def q_pets
        @pets = self.pets.count            
    end 

    def pet_name
        Pet.find(self.pet_id).name
    end
end
