class AddStartTimeToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :start_time, :time
  end
end
