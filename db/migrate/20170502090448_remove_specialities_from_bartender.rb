class RemoveSpecialitiesFromBartender < ActiveRecord::Migration[5.0]
  def change
    1.upto(3) { |i| remove_column :bartenders, "speciality_#{i}".to_sym, :string }
  end
end
