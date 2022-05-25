class Pet < ApplicationRecord
    has_many :pethistories, dependent: :destroy


    def appointments
        self.pethistories.count            
    end    

    def owner
        Holder.find(self.holder_id).name
    end

    def weight_max
       self.pethistories.map {|x| x.weight}.max 
    end

    def weight_avg
        unless pethistories.nil 
            total = self.pethistories.map {|x| x.weight}
            total.inject {|sum, ele| sum + ele}/total.size
        end
    end

    def height_max
        self.pethistories.map {|x| x.height}.max 
     end
 
     def height_avg
         total = self.pethistories.map {|x| x.height}
         total.inject {|sum, ele| sum + ele}/total.size
     end
end
