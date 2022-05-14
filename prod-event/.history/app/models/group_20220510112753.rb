class Group < ApplicationRecord
    has_many :concerts
    enum group_type:[]
    def q_concert
        self.concerts.count
    end

end
