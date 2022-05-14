class User < ApplicationRecord
    has_secure_password
    validates :email, uniquenes

end
