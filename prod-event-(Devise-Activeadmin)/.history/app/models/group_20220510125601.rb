class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    enum group_type:[:boygroup, :grilgroup, :band]
    def q_concert
        self.concerts.count
    end

    def concert_this_month
        this_month= Time.now.month
        self.concerts.select {|m| m.date.month == this_month}.count
    end

    def last_concert
        self.concerts.map{|c| c.date}.last.strftime("%Y %B %A")
    end

    def max_attendance
        self.concerts.map{|c| c.attendance}.max
    end

    def max_duration
        self.concerts.map

    end 

end
