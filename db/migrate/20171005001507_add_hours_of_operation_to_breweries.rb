class AddHoursOfOperationToBreweries < ActiveRecord::Migration[5.1]
  def change
    add_column :breweries, :days_and_hours, :string
  end
end
