class Building < ApplicationRecord
    has_many :apartments, dependent: :destroy
    accepts_nested_attributes_for :apart

    def to_s
        name
    end

end

