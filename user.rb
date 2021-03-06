class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 15 }
    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
   
    
    has_secure_password
    validates :password, presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }, length: { in: 8..32 }
end
