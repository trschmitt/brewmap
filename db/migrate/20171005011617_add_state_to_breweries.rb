class AddStateToBreweries < ActiveRecord::Migration[5.1]
  def change
    add_column :breweries, :state, :string
  end
end
