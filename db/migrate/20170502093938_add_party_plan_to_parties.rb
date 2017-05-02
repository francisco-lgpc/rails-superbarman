class AddPartyPlanToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :party_plan, :string
  end
end
