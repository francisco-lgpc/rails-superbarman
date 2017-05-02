class RemoveLaguageColumnsFromBartender < ActiveRecord::Migration[5.0]
  def change
    1.upto(5) { |i| remove_column :bartenders, "language_#{i}".to_sym, :string }
  end
end
