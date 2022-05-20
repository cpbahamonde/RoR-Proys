class Group < ApplicationRecord
    has_many :concerts, dependent
    enum group_type:[:boygroup, :grilgroup, :band]
    def q_concert
        self.concerts.count
    end

end
