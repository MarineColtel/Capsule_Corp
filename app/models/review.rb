class Review < ApplicationRecord
  has_many :bookings
  validates :rating, presence: true
  validates :comment, presence: true
end
