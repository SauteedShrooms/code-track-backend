class Car < ApplicationRecord
  belongs_to :user
  has_many :bodies
  has_many :paints
  has_many :wheels
  has_many :spoilers
end
