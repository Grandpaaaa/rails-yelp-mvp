class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = %w( chinese italian japanese french belgian)
  validates :category, inclusion: { in: CATEGORY }
  validates :name, presence: true
  validates :address, presence: true
end
