class Car < ApplicationRecord
  belongs_to :user
  has_many :body
  has_many :paint
  has_many :wheel
  has_many :accessorry
end
