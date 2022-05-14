class Group < ApplicationRecord
    has_many :concerts
    enum ty
    def q_concert
        self.concerts.count
    end

end
