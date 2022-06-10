class Pet < ApplicationRecord
    has_many :pethistories, dependent: :destroy
    belongs_to :holder

    def q_appointments
        self.pethistories.count            
    end    

    def owner
        Holder.find(self.holder_id).name
    end

    def weight_max
       unless pethistories.nil? 
        self.pethistories.map {|x| x.weight}.max 
       end
    end

    def weight_avg
        unless pethistories.nil?
            total = self.pethistories.map {|x| x.weight}
            total.inject {|sum, ele| sum + ele}/total.size
        end
    end

    def height_max
        unless pethistories.nil? 
            self.pethistories.map {|x| x.height}.max
        end 
     end
 
     def height_avg
        unless pethistories.nil?
         total = self.pethistories.map {|x| x.height}
         total.inject {|sum, ele| sum + ele} / total.size
        end
     end
end
