class Capsule < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  has_many :users, through: :bookings
  belongs_to :user

  validates :name, presence: true
  validates :year, presence: true
  validates :advices, presence: true
  validates :price_per_day, presence: true
  # validates :picture, presence: true
end
