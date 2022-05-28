class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    has_many :crews, dependent: :destroy
    accepts_nested_attributes_for :crews, reject_if: :all_blank, allow_destroy: true

    enum group_type:{BoysGroup: "BoysGroup", GirlsGroup: "GirlsGroup", Band: "Band"}

    def concertss
        @concertss = self.concerts.order(date: :asc)
    end

    def q_concert
        self.concerts.count
    end

    def integrs
        self.crews.count
    end

    def concert_this_month
        this_month= Time.now.month
        this_year = Time.now.year
        self.concerts.select {|m| m.date.month == this_month && m.date.year == this_year }.count
    end

    def last_concert
            self.concertss.map{|c| c.date }.last.strftime("%d-%m-%Y")
    end

    def max_attendance
        
        if self.concerts.present? 
            self.concerts.map{|c| c.attendance}.max 
        else
            "Sin conciertos aun"
        end
    end

    def max_duration
        
        if self.concerts.present? 
            self.concerts.map{|c| c.duration}.max
        else
            "Sin conciertos aun"
        end
        
    end 

end
