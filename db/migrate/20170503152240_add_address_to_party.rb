class AddAddressToParty < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :zip_code, :string
    add_column :parties, :city, :string
    add_column :parties, :country, :string
  end
end
