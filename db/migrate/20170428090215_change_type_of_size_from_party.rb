class ChangeTypeOfSizeFromParty < ActiveRecord::Migration[5.0]
  def change
    change_column :parties, :size, :string
  end
end
