class AddPaymentConfirmedToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :payment_confirmed, :boolean
  end
end
