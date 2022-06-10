class Pet < ApplicationRecord
    belongs_to :holder
    has_many :pethistories, dependent: :destroy

  

    def holder
        Holder.find(self.holder_id).name
    end

    def weight_max
        if pet_histories.present?
            self.pet_histories.map {|elem| elem.weight}.max 
        end
    end

    def weight_avg
        if pet_histories.present?
            total = self.pet_histories.map {|elem| elem.weight}
            total.inject {|sum, elem| sum + elem}/total.size
        end
    end

    def height_max
        if pethistories.present?
            self.pet_histories.map {|elem| elem.height}.max
        end 
     end
 
     def height_avg
        if pethistories.present?
            total = self.pet_histories.map {|elem| elem.height}
            total.inject {|sum, elem| sum + elem}/total.size
        end
     end
end
