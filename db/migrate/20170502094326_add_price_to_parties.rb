class AddPriceToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :price, :integer
  end
end
