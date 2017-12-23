class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
  validates :address, length: { minimum: 8 }, presence: true
  validates :description, length: { in: 25..140 }, presence: true
end
