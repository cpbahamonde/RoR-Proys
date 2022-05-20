class Group < ApplicationRecord
    has_many :concerts

    def q_concert
        self.concerts.count
        
end
