class Restaurant < ApplicationRecord
  # associations
  has_many :reviews, dependent: :destroy
  # validations
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :name, presence: true
  validates :address, presence: true
end
