class AddTitleToBartenders < ActiveRecord::Migration[5.0]
  def change
    add_column :bartenders, :title, :string
  end
end
