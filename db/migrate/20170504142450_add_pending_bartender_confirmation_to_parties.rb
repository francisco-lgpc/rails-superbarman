class AddPendingBartenderConfirmationToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :pending_bartender_confirmation, :boolean, default: :true
  end
end
