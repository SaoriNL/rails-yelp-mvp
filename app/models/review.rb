class Review < ApplicationRecord
  # associations
  belongs_to :restaurant
  # validations
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: true
  validates :rating, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0 }
end
