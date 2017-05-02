class AddPartyToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :party, foreign_key: true
  end
end
