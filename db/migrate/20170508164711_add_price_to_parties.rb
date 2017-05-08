class AddPriceToParties < ActiveRecord::Migration[5.0]
  def change
    add_monetize :parties, :price, currency: { present: false }
  end
end
