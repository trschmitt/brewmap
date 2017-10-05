class AddLocationTypeToBreweries < ActiveRecord::Migration[5.1]
  def change
    add_column :breweries, :location_type, :string
  end
end
