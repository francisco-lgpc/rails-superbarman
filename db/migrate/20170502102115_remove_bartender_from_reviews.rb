class RemoveBartenderFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_reference :reviews, :bartender, foreign_key: true
  end
end
