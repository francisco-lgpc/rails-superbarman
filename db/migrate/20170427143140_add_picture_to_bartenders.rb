class AddPictureToBartenders < ActiveRecord::Migration[5.0]
  def change
    add_column :bartenders, :picture, :string
  end
end
