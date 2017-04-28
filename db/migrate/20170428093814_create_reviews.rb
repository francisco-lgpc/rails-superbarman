class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :rating
      t.references :bartender, foreign_key: true

      t.timestamps
    end
  end
end
