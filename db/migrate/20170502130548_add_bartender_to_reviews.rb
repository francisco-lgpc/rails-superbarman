class AddBartenderToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :bartender, foreign_key: true
  end
end
