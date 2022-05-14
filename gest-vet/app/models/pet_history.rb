class PetHistory < ApplicationRecord
    belongs_to :pet
    
    def pet_name  
        self.pet.name
    end
end
