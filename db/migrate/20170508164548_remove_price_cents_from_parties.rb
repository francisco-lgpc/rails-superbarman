class RemovePriceCentsFromParties < ActiveRecord::Migration[5.0]
  def change
    remove_column :parties, :price_cents, :integer
  end
end
