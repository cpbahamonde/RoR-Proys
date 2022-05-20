class Concert < ApplicationRecord
    belongs_to :group
    def group_name
        self.group.name
    end

    def_this_month
end
