class AddMessageToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :message, :text
  end
end
