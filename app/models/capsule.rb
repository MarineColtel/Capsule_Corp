class Capsule < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_one_attached :photo
  belongs_to :user

  validates :name, presence: true
  validates :year, presence: true
  validates :advices, presence: true
  validates :price_per_day, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_years, against: %i[name year],
                                             using: {
                                               tsearch: { prefix: true }
                                             }
end
