class AddPaymentStatusToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :payment_status, :boolean, default: false
  end
end
