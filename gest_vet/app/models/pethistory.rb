class Pethistory < ApplicationRecord
    belongs_to :pet

    ransacker :pet, formatter: proc {|v| pets[v]} do |parent|
        parent.table[:pets]
    end

    def petname
        @petname = Pet.find(self.pet_id).name
    end

    def petid
        @petid = Pet.find(self.pet_id)
    end
    

    def owner
        @owner = Holder.find(self.holder_id).name
    end
end
