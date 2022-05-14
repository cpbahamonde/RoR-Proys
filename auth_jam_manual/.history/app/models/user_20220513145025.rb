class User < ApplicationRecord
    has_secure_password
    has_sce
    validates :email, uniqueness: true, 
    validates :email, presences: true

end
