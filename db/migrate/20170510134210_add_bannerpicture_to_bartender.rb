class AddBannerpictureToBartender < ActiveRecord::Migration[5.0]
  def change
    add_column :bartenders, :bannerpicture, :string
  end
end
