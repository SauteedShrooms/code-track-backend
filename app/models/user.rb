class User < ApplicationRecord
   has_many :cars
   has_many :bodies, through: :cars
   has_many :paints, through: :cars
   has_many :wheels, through: :cars
   has_many :spoilers, through: :cars
   has_many :hosted, class_name: 'Event'


   has_secure_password
   validates :username, uniqueness: { case_sensitive: false }
   validates :username, presence: true, uniqueness: true
   validates :password, presence: true

end
