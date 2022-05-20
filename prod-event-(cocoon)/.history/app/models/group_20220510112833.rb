class Group < ApplicationRecord
    has_many :concerts
    enum group_type:[:boygroup, :grilgroup,]
    def q_concert
        self.concerts.count
    end

end
