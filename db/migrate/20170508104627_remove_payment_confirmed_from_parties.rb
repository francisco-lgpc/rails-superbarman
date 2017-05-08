class RemovePaymentConfirmedFromParties < ActiveRecord::Migration[5.0]
  def change
    remove_column :parties, :payment_confirmed, :boolean
  end
end
