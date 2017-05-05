class AddAgreedToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :agreed, :boolean, default: false
  end
end
