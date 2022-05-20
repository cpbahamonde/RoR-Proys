class Group < ApplicationRecord
    has_many :concerts
    enum
    def q_concert
        self.concerts.count
    end

end
