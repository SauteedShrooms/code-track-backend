class User < ApplicationRecord
   has_many :cars

   has_secure_password
   validates :username, uniqueness: { case_sensitive: false }
   validates :username, presence: true, uniqueness: true
   validates :password, presence: true

end
