class AddLanguagesToBartender < ActiveRecord::Migration[5.0]
  def change
    add_column :bartenders, :languages, :string
  end
end
