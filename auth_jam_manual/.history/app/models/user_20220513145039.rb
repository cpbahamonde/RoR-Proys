class User < ApplicationRecord
    has_secure_password
    has_many 
    validates :email, uniqueness: true, 
    validates :email, presences: true

end
