class Review < ApplicationRecord
  belongs_to :booking
  has_one :user, through: :booking
  validates :rating, presence: true
  validates :comment, presence: true
end
