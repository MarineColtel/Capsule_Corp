class User < ApplicationRecord
  has_many :bookings
  has_many :capsule, through: :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
