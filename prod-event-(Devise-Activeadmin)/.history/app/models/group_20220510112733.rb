class Group < ApplicationRecord
    has_many :concerts
    enu
    def q_concert
        self.concerts.count
    end

end
