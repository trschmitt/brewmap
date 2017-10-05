class AddOwnerIdToBreweries < ActiveRecord::Migration[5.1]
  def change
    add_column :breweries, :owner_id, :integer
  end
end
