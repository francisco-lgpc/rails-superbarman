class RemovePriceFromParties < ActiveRecord::Migration[5.0]
  def change
    remove_column :parties, :price, :integer
  end
end
