class User < ApplicationRecord

    # has_secure_password
    has_one :vault
    has_many :money 

end
