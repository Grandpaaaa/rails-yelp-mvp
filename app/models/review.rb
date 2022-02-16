class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates_numericality_of :rating, presence: true
  validates :rating, inclusion: { in: (0..5) }
end
