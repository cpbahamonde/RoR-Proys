class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    has_many :crews, dependent: :destroy
    accepts_nested_attributes_for :crews, reject_if: :all_blank, allow_destroy: true

    enum group_type:{BoysGroup: "BoysGroup", GirlsGroup: "GirlsGroup", Band: "Band"}

    def concertss
        self.concerts.order(date: :desc)
    end
    
    def q_concert
        self.concerts.count
    end

    def integrs
        self.crews.count
    end

    def this_month
        this_month=Time.now.month
    end
    
    def this_month_l
       I18n.l(Time.current, format: "%B")
    end

    def this_year
        Time.now.year
    end

    def concert_this_month
        
        self.concerts.select {|m| m.date.month == this_month && m.date.year == this_year}.count
    end

    def last_concert
         self.concertss.map{|c| c.date }.first
    end

    def max_attendance
        self.concerts.map{|c| c.attendance}.max
    end

    def max_duration
        self.concerts.map{|c| c.duration}.max
    end 

end
