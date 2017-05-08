class ChangeDefaultsOfBooleansFromParties < ActiveRecord::Migration[5.0]
  def change
    change_column :parties, :bartender_confirmed, :boolean, default: false
    change_column :parties, :payment_confirmed, :boolean, default: false
  end
end
