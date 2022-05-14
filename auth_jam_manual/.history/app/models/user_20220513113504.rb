class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true, 
    validates presence

end
