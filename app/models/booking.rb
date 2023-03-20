class Booking < ApplicationRecord
  belongs_to :capsule
  belongs_to :user
  belongs_to :review
end
