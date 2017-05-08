class RemoveSkuFromParties < ActiveRecord::Migration[5.0]
  def change
    remove_column :parties, :sku, :string
  end
end
