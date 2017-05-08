class ChangePaymentStatusFromParties < ActiveRecord::Migration[5.0]
  def change
    rename_column :parties, :payment_status, :payment_confirmed
  end
end
