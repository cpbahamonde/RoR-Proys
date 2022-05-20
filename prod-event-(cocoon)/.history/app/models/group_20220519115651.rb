class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    has_many :crews, dependent: :destroy
    has_many :crew,, dependent: :destroy inverse_of: :recipe
    accepts_nested_attributes_for :crews, reject_if: :all_blank, allow_destroy: true




    enum group_type:[:boygroup, :girlgroup, :band]

    def q_concert
        self.concerts.count
    end

    def concert_this_month
        this_month= Time.now.month
        self.concerts.select {|m| m.date.month == this_month}.count
    end

    def last_concert
        if self.concerts.present? 
            self.concerts.map{|c| c.date }.last.strftime("%d-%m-%Y")
        else
            "Sin conciertos aun"
        end
    end


    def max_attendance
        self.concerts.map{|c| c.attendance}.max
    end

    def max_duration
        self.concerts.map{|c| c.duration}.max
    end 

end
