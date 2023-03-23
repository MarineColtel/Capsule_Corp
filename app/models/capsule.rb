class Capsule < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  belongs_to :user

  validates :name, presence: true
  validates :year, presence: true
  validates :advices, presence: true
  validates :price_per_day, presence: true
end
