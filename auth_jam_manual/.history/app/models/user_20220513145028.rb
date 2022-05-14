class User < ApplicationRecord
    has_secure_password
    has_s
    validates :email, uniqueness: true, 
    validates :email, presences: true

end
