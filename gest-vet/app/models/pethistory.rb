class Pethistory < ApplicationRecord
    belongs_to :pet

    def historial
        @historial = Pethistory.all
    end

    def petname
        @pet_name = Pet.find(self.pet_id).name
    end

    def owner
        @owner = Holder.find(self.holder_id).name
    end
end
