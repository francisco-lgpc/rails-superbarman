class CreateBartenders < ActiveRecord::Migration[5.0]
  def change
    create_table :bartenders do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.text :bio
      t.integer :rating
      t.string :location
      1.upto(5) { |i| t.string "language #{i}".to_sym }
      1.upto(3) { |i| t.string "speciality #{i}".to_sym }
      t.timestamps
    end
  end
end
