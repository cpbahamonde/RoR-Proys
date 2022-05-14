class Building < ApplicationRecord
    has_many :apartments, dependent: :destroy
    accepts

    def to_s
        name
    end

end

