class AddPaymentToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :payment, :json
  end
end
