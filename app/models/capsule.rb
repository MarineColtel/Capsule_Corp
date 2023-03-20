class Capsule < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :year, presence: true
  validates :advices, presence: true
  validates :price_per_day, presence: true
  validates :photos, presence: true
end
