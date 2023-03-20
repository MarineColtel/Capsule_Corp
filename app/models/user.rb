class User < ApplicationRecord
  has_many :capsules
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
