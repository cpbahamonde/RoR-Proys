class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    enum group_type:[:boygroup, :grilgroup, :band]
    def q_concert
        self.concerts.count
    end

    def concert_this_month
        this_mont= Time.now.month
        banda = Band.last
        self.concerts.select |m| n == this_month
        self.concerts.each
    end

end
