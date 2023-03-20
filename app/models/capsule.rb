class Capsule < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true
  validates :year, presence: true
  validates :advices, presence: true
  validates :price_per_day, presence: true
  validates :photos, presence: true
end