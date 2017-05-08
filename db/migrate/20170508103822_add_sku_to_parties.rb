class AddSkuToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :sku, :string
  end
end
