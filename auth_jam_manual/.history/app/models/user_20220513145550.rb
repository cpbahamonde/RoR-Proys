class User < ApplicationRecord
    has_secure_password
        t.datetime "created_at", precision: nil, null: false

    validates :email, uniqueness: true, 
    validates :email, presences: true

end
