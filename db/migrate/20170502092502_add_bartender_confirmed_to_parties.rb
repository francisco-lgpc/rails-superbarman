class AddBartenderConfirmedToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :bartender_confirmed, :boolean
  end
end
