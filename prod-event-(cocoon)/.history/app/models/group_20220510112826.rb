class Group < ApplicationRecord
    has_many :concerts
    enum group_type:[:boygroup]
    def q_concert
        self.concerts.count
    end

end
