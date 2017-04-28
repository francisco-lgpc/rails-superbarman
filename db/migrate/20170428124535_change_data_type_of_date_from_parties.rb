class ChangeDataTypeOfDateFromParties < ActiveRecord::Migration[5.0]
  def change
    change_column :parties, :date, 'date USING CAST(date AS date)'
  end
end
