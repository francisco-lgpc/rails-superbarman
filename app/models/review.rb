class Review < ApplicationRecord
RATINGS = (0..5).to_a
  belongs_to :party
  belongs_to :user
  belongs_to :bartender
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RATINGS,
    message: "%{value} should be a number comprised between 0 and 5" }
  after_save :update_bartender_rating

  private

  def update_bartender_rating
    review_ratings = self.bartender.reviews.all.map(&:rating)
    self.bartender.rating = (review_ratings.reduce{ |sum, review_rating| sum + review_rating }.to_f / review_ratings.size).round
    self.bartender.save!
  end
end
