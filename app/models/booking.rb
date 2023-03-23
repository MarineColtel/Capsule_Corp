class Booking < ApplicationRecord
  belongs_to :capsule
  belongs_to :user
  has_one :review, dependent: :destroy
end
