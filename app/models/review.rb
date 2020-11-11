class Review < ApplicationRecord
  belongs_to :restaurant

  NOTES = (0..5).to_a

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: NOTES }
  validates :rating, numericality: { only_integer: true }
end
