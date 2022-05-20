class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
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
            self.concerts.map{|c| c.date }.last.strftime("%Y %B %A")
        else
            "Sin conciertos aun"
        end
    end

def published_at=(date_string)
  write_attribute(:published_at, Date.strptime(date_string, '%m/%d/%Y'))
end


    def max_attendance
        self.concerts.map{|c| c.attendance}.max
    end

    def max_duration
        self.concerts.map{|c| c.duration}.max
    end 

end
