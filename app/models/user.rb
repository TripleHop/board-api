class User < ApplicationRecord
    validates :username, presence: true  
    validates :email, presence: true, uniqueness: true 
    has_many :posts 
    # has_secure_password
end
